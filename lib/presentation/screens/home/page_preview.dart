import 'dart:async';

import 'package:cine_world/core/di/injections.dart';
import 'package:cine_world/generated/l10n.dart';
import 'package:cine_world/logic/bloc/page_preview/page_preview_bloc.dart';
import 'package:cine_world/presentation/components/my_error_widget.dart';
import 'package:cine_world/presentation/components/preview_film.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PagePreview extends StatefulWidget {
  const PagePreview({super.key, required this.path});

  final String path;

  @override
  State<PagePreview> createState() => _PagePreviewState();
}

class _PagePreviewState extends State<PagePreview>
    with AutomaticKeepAliveClientMixin {
  final _bloc = getIt<PagePreviewBloc>();
  final ScrollController _scrollController = ScrollController();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _bloc.add(InitialEvent(path: widget.path));
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent) {
      if(_timer != null) return;
      _bloc.add(const LoadMoreEvent());
      _timer = Timer(const Duration(seconds: 2), () => _timer = null);
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _bloc.close();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<PagePreviewBloc, PagePreviewState>(
      bloc: _bloc,
      buildWhen: (previous, current) =>
          current is LoadedState ||
          (current is ErrorState && previous is! ErrorState),
      builder: (context, state) {
        if (state is LoadedState) {
          return Scrollbar(
            controller: _scrollController,
            thumbVisibility: true,
            interactive: true,
            child: GridView.builder(
              cacheExtent: 1000,
              physics: const BouncingScrollPhysics(),
              semanticChildCount: state.movies.length,
              controller: _scrollController,
              itemCount: state.movies.length,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 7 / 10),
              itemBuilder: (context, index) {
                final model = state.movies[index];
                return PreviewFilm(key: Key(model.id), model: model);
              },
            ),
          );
        }
        if (state is ErrorState) {
          return MyErrorWidget(
            onTap: () => _bloc.add(const LoadMoreEvent()),
            title: S.current.an_error_occurred,
            asset: 'error',
          );
        }
        return const Center(
            child: CircularProgressIndicator(color: Color(0xFFFF5510)));
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
