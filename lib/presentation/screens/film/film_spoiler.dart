import 'package:cine_world/core/extensions/context.dart';
import 'package:cine_world/generated/l10n.dart';
import 'package:flutter/material.dart';

class FilmSpoiler extends StatelessWidget {
  const FilmSpoiler(
      {super.key,
      required this.name,
      required this.content,
      required this.duration,
      required this.country,
      required this.category,
      required this.actors,
      required this.director,
      required this.year,
      required this.quality});

  final String name;
  final String content;
  final String duration;
  final String country;
  final String category;
  final String actors;
  final String director;
  final int year;
  final String quality;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      sliver: SliverToBoxAdapter(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: context.textTheme.titleLarge),
            const SizedBox(height: 12),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: '${S.current.spoiler}: ',
                  style: context.textTheme.titleMedium),
              TextSpan(
                text: content,
                style: context.textTheme.bodyMedium,
              )
            ])),
            const SizedBox(height: 4),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: '${S.current.director}: ',
                  style: context.textTheme.titleMedium),
              TextSpan(
                text: director,
                style: context.textTheme.bodyMedium,
              )
            ])),
            const SizedBox(height: 4),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: '${S.current.actors}: ',
                  style: context.textTheme.titleMedium),
              TextSpan(
                text: actors,
                style: context.textTheme.bodyMedium,
              )
            ])),
            const SizedBox(height: 4),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: '${S.current.duration}: ',
                  style: context.textTheme.titleMedium),
              TextSpan(
                text: duration,
                style: context.textTheme.bodyMedium,
              )
            ])),
            const SizedBox(height: 4),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: '${S.current.category}: ',
                  style: context.textTheme.titleMedium),
              TextSpan(
                text: category,
                style: context.textTheme.bodyMedium,
              )
            ])),
            const SizedBox(height: 4),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: '${S.current.quality}: ',
                  style: context.textTheme.titleMedium),
              TextSpan(
                text: quality,
                style: context.textTheme.bodyMedium,
              )
            ])),
            const SizedBox(height: 4),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: '${S.current.year}: ',
                  style: context.textTheme.titleMedium),
              TextSpan(
                text: year.toString(),
                style: context.textTheme.bodyMedium,
              )
            ])),
            const SizedBox(height: 4),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: '${S.current.country}: ',
                  style: context.textTheme.titleMedium),
              TextSpan(
                text: country,
                style: context.textTheme.bodyMedium,
              )
            ])),
          ],
        ),
      ),
    );
  }
}
