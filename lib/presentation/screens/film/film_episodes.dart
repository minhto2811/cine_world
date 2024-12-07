import 'package:cine_world/core/extensions/context.dart';
import 'package:cine_world/data/models/episodes.dart';
import 'package:cine_world/generated/l10n.dart';
import 'package:flutter/material.dart';

class FilmEpisodes extends StatelessWidget {
  const FilmEpisodes({super.key, required this.episodes, required this.onTap});

  final List<Episodes> episodes;
  final void Function(ServerData data) onTap;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemCount: episodes.length,
      itemBuilder: (context, index) =>
          FilmEpisode(episode: episodes[index], onTap: onTap),
    );
  }
}

class FilmEpisode extends StatelessWidget {
  const FilmEpisode({super.key, required this.episode, required this.onTap});

  final Episodes episode;
  final void Function(ServerData data) onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${S.current.server_name}: ${episode.serverName}',
            style: context.textTheme.titleMedium,
          ),
          const SizedBox(height: 16),
          GridView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              addAutomaticKeepAlives: true,
              itemCount: episode.serverData!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 2.5),
              itemBuilder: (context, index) =>
                  ButtonEpisode(data: episode.serverData![index], onTap: onTap))
        ],
      ),
    );
  }
}

class ButtonEpisode extends StatelessWidget {
  const ButtonEpisode({super.key, required this.data, required this.onTap});

  final ServerData data;
  final void Function(ServerData) onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onTap.call(data),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      child: Text(
        '${data.name}',
        style: context.textTheme.bodyMedium,
      ),
    );
  }
}
