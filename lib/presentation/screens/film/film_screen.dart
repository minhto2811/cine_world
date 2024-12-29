import 'package:cine_world/core/di/injections.dart';
import 'package:cine_world/generated/l10n.dart';
import 'package:cine_world/logic/bloc/film/film_bloc.dart';
import 'package:cine_world/presentation/components/my_error_widget.dart';
import 'package:cine_world/presentation/screens/film/film_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilmScreen extends StatefulWidget {
  const FilmScreen({super.key});

  @override
  State<FilmScreen> createState() => _FilmScreenState();
}

class _FilmScreenState extends State<FilmScreen> {
  final _bloc = getIt<FilmBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(InitialEvent(context: context));
  }


  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            body: BlocBuilder<FilmBloc, FilmState>(
                bloc: _bloc,
                buildWhen: (previous, current) =>
                    current is LoadedState ||
                    current is LoadingState ||
                    current is ErrorState,
                builder: (context, state) {
                  if (state is LoadedState) {
                    return FilmDetail(movie: state.movie, bloc: _bloc);
                  }
                  if (state is LoadingState) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state is ErrorState) {
                    return MyErrorWidget(
                      onTap: () => _bloc.add(InitialEvent(context: context)),
                      title: S.current.an_error_occurred,
                      asset: 'error',
                    );
                  }
                  return const SizedBox();
                })));
  }
}
