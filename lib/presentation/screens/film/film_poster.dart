import 'package:cached_network_image/cached_network_image.dart';
import 'package:cine_world/core/extensions/context.dart';
import 'package:cine_world/logic/bloc/film/film_bloc.dart';
import 'package:cine_world/presentation/screens/film/film_favourite.dart';
import 'package:flutter/material.dart';

class FilmPoster extends StatelessWidget {
  const FilmPoster({super.key, required this.url, required this.title, required this.bloc});

  final String url;
  final String title;
  final FilmBloc bloc;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: context.width * 1.3,
      pinned: true,
      stretch: true,
      actions: [FilmFavourite(bloc: bloc)],
      stretchTriggerOffset: context.width,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: CachedNetworkImage(imageUrl: url, fit: BoxFit.cover),
        centerTitle: true,
        titlePadding: const EdgeInsets.symmetric(horizontal: 20),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 18,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        stretchModes: const [
          StretchMode.zoomBackground,
          StretchMode.blurBackground,
          StretchMode.fadeTitle,
        ],
      ),
    );
  }
}


