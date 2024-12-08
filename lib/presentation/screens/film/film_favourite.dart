import 'package:cine_world/logic/bloc/film/film_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilmFavourite extends StatelessWidget {
  const FilmFavourite({super.key, required this.bloc});

  final FilmBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilmBloc, FilmState>(
      bloc: bloc,
      buildWhen: (previous, current) => current is FavoriteState,
      builder: (context, state) {
        if (state is FavoriteState) {
          return IconButton(
              onPressed: () =>
                  bloc.add(FavouriteEvent(isFavourite: state.isFavourite)),
              icon: Icon(
                state.isFavourite ? Icons.favorite : Icons.favorite_outline,
              ));
        }
        return const SizedBox();
      },
    );
  }
}
