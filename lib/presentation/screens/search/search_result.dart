import 'package:cine_world/generated/l10n.dart';
import 'package:cine_world/logic/bloc/search/search_bloc.dart';
import 'package:cine_world/presentation/components/my_error_widget.dart';
import 'package:cine_world/presentation/components/preview_film.dart';
import 'package:cine_world/presentation/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key, required this.bloc});

  final SearchBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      bloc: bloc,
      buildWhen: (previous, current) =>
          current is LoadedState ||
          current is LoadingState ||
          current is ErrorState,
      builder: (context, state) {
        if (state is LoadingState) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is ErrorState) {
          return SizedBox(
            width: double.infinity,
            child: MyErrorWidget(
              title: S.current.an_error_occurred,
              asset: 'error',
            ),
          );
        }

        if (state is LoadedState) {
          if (state.previews.isEmpty) {
            return SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Lottie.asset('assets/lotties/find.json', width: 220),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      S.current.not_found_movie,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            );
          }
          return GridView.builder(
            cacheExtent: 1000,
            physics: const BouncingScrollPhysics(),
            semanticChildCount: state.previews.length,
            itemCount: state.previews.length,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 7 / 10),
            itemBuilder: (context, index) => PreviewFilm(
              model: state.previews[index],
              onTap: () => bloc.add(NavigateEvent(
                  route: MyRoute.film, arguments: state.previews[index].slug)),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
