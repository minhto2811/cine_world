import 'package:cine_world/core/extensions/context.dart';
import 'package:cine_world/generated/l10n.dart';
import 'package:flutter/material.dart';

class FilmRelated extends StatelessWidget {
  const FilmRelated({super.key, required this.type});

  final String type;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      sliver: SliverToBoxAdapter(
        child: Column(
          children: [
            Row(
              children: [
                const Expanded(
                    child: Divider(
                  thickness: 0.7,
                  height: 0,
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(S.current.movies_you_may_like,
                      style: context.textTheme.bodyMedium),
                ),
                const Expanded(
                    child: Divider(
                  thickness: 0.7,
                  height: 0,
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
