import 'package:cine_world/core/di/injections.dart';
import 'package:cine_world/core/extensions/context.dart';
import 'package:cine_world/generated/l10n.dart';
import 'package:cine_world/logic/bloc/page_preview/page_preview_bloc.dart';
import 'package:cine_world/presentation/components/latest_release_widget.dart';
import 'package:cine_world/presentation/route.dart';
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

  @override
  void initState() {
    super.initState();
    _bloc.add(InitialEvent(path: widget.path));
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels + MyRoute.context.height * 0.1 >=
        _scrollController.position.maxScrollExtent) {
      _bloc.add(const LoadMoreEvent());
    }
  }

  @override
  void dispose() {
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
          current is LoadedState || current is ErrorState,
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
                return LatestReleaseWidget(key: Key(model.id), model: model);
              },
            ),
          );
        }
        if (state is ErrorState) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/error.png',
                width: 260,
              ),
              Text(
                S.current.an_error_occurred,
                style: context.textTheme.bodyMedium,
              ),
              const SizedBox(height: 16),
              GestureDetector(
                  onTap: () => _bloc.add(const LoadMoreEvent()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.refresh_outlined,
                        color: Color(0xFFFF5510),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        S.current.refresh,
                        style: context.textTheme.bodyLarge!.copyWith(
                          color: const Color(0xFFFF5510),
                        ),
                      )
                    ],
                  )),
              const SizedBox(height: 80),
            ],
          );
        }
        return const Center(
            child: CircularProgressIndicator(
          color: Color(0xFFFF5510),
        ));
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
