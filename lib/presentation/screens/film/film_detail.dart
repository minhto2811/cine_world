import 'package:cine_world/data/models/movie.dart';
import 'package:cine_world/presentation/screens/film/film_episodes.dart';
import 'package:cine_world/presentation/screens/film/film_poster.dart';
import 'package:cine_world/presentation/screens/film/film_related.dart';
import 'package:cine_world/presentation/screens/film/film_spoiler.dart';
import 'package:flutter/material.dart';

class FilmDetail extends StatelessWidget {
  const FilmDetail({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        FilmPoster(
          url: movie.posterUrl,
          title: movie.originName,
        ),
        hPad(12),
        FilmSpoiler(
          name: movie.name,
          content: movie.content,
          duration: movie.time,
          country: movie.country.map((e) => e.name).join(', '),
          category: movie.category.map((e) => e.name).join(', '),
          actors: movie.actor.join(', '),
          director: movie.director.join(', '),
          year: movie.year,
          quality: movie.quality,
        ),
        hPad(12),
        FilmEpisodes(episodes: movie.episodes),
        hPad(24),
        FilmRelated(type: movie.type),
        hPad(16),
      ],
    );
  }

  SliverToBoxAdapter hPad(double value) =>
      SliverToBoxAdapter(child: SizedBox(height: value));
}
