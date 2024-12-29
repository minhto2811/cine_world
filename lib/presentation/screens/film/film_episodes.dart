import 'package:cine_world/core/di/injections.dart';
import 'package:cine_world/core/extensions/context.dart';
import 'package:cine_world/data/models/episodes.dart';
import 'package:cine_world/generated/l10n.dart';
import 'package:cine_world/logic/bloc/episode/episode_bloc.dart';
import 'package:cine_world/presentation/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilmEpisodes extends StatelessWidget {
  const FilmEpisodes({super.key, required this.episodes});

  final List<Episodes> episodes;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemCount: episodes.length,
      itemBuilder: (context, index) => FilmEpisode(episode: episodes[index]),
    );
  }
}

class FilmEpisode extends StatelessWidget {
  const FilmEpisode({super.key, required this.episode});

  final Episodes episode;

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
                  ButtonEpisode(data: episode.serverData![index]))
        ],
      ),
    );
  }
}

class ButtonEpisode extends StatefulWidget {
  const ButtonEpisode({super.key, required this.data});

  final ServerData data;

  @override
  State<ButtonEpisode> createState() => _ButtonEpisodeState();
}

class _ButtonEpisodeState extends State<ButtonEpisode> {
  final EpisodeBloc _bloc = getIt<EpisodeBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(InitialEvent(videoUrl: widget.data.linkM3u8!));
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EpisodeBloc, EpisodeState>(
      bloc: _bloc,
      buildWhen: (previous, current) => current is LoadedState,
      builder: (context, state) {
        if (state is LoadedState) {
          return InkWell(
            onTap: () => _bloc.add(NavigationEvent(
                route: MyRoute.playVideo, arguments: widget.data)),
            borderRadius: BorderRadius.circular(16),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 10,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                        colors: [
                          state.ratio == 0.0
                              ? Colors.grey.shade500
                              : Theme.of(context).primaryColor,
                          state.ratio == 0.0
                              ? Colors.grey.shade500
                              : Theme.of(context).primaryColor.withOpacity(0.3),
                          Colors.grey.shade500,
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.0, state.ratio, state.ratio])),
                alignment: Alignment.center,
                child: Text(
                  '${widget.data.name}',
                  style: context.textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
