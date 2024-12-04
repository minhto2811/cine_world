import 'package:cached_network_image/cached_network_image.dart';
import 'package:cine_world/core/extensions/context.dart';
import 'package:flutter/material.dart';

class FilmPoster extends StatelessWidget {
  const FilmPoster({super.key, required this.url, required this.title});

  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: context.width * 1.3,
      pinned: true,
      backgroundColor: const Color(0xFFE84100),
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: CachedNetworkImage(imageUrl: url, fit: BoxFit.cover),
        title: Text(
          title,
          style: context.textTheme.titleLarge!.copyWith(color: Colors.white),
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.white),
      actionsIconTheme: const IconThemeData(color: Colors.white),
    );
  }
}
