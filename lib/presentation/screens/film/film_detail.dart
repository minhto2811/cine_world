import 'package:cine_world/core/extensions/context.dart';
import 'package:cine_world/data/models/movie.dart';
import 'package:cine_world/logic/bloc/film/film_bloc.dart';
import 'package:cine_world/presentation/components/video_youtube_parent.dart';
import 'package:cine_world/presentation/screens/film/film_episodes.dart';
import 'package:cine_world/presentation/screens/film/film_poster.dart';
import 'package:cine_world/presentation/screens/film/film_spoiler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:intl/intl.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FilmDetail extends StatefulWidget {
  const FilmDetail({super.key, required this.movie, required this.bloc});

  final Movie movie;
  final FilmBloc bloc;

  @override
  State<FilmDetail> createState() => _FilmDetailState();
}

class _FilmDetailState extends State<FilmDetail> {
  YoutubePlayerController? _controller;
  ScrollController? _scrollController;
  late double _offset;
  bool _isPLaying = false;
  late FlutterTts _flutterTts;

  @override
  void initState() {
    super.initState();
    _flutterTts = FlutterTts();
    _flutterTts.setLanguage('vi-VN');
    if (widget.movie.trailerUrl.isNotEmpty) {
      final id = YoutubePlayer.convertUrlToId(widget.movie.trailerUrl)!;
      _controller = YoutubePlayerController(
        initialVideoId: id,
        flags: YoutubePlayerFlags(
          mute: false,
          autoPlay: false,
          disableDragSeek: false,
          loop: false,
          isLive: false,
          showLiveFullscreenButton: false,
          forceHD: true,
          enableCaption: true,
          captionLanguage: Intl.systemLocale.substring(0, 2),
        ),
      )..addListener(
          () => setState(() => _isPLaying = _controller!.value.isPlaying));
      _scrollController = ScrollController()
        ..addListener(() => _offset = _scrollController!.offset);
    }
  }

  @override
  void deactivate() {
    _controller?.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller?.dispose();
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VideoYoutubeParent(
      controller: _controller,
      onExitFullScreen: () => _scrollController!.animateTo(_offset,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut),
      child: _buildBody(),
      builder: (context, player) => _buildBody(player: player),
    );
  }

  Widget _buildBody({Widget? player}) => CustomScrollView(
        controller: _scrollController,
        slivers: [
          FilmPoster(
            bloc: widget.bloc,
            url: widget.movie.posterUrl,
            title: widget.movie.originName,
          ),
          hPad(12),
          FilmSpoiler(
            onListen: () {
              _flutterTts.speak(widget.movie.content);
            },
            name: widget.movie.name,
            content: widget.movie.content,
            duration: widget.movie.time,
            country: widget.movie.country.map((e) => e.name).join(', '),
            category: widget.movie.category.map((e) => e.name).join(', '),
            actors: widget.movie.actor.join(', '),
            director: widget.movie.director.join(', '),
            year: widget.movie.year,
            quality: widget.movie.quality,
          ),
          hPad(12),
          if (player != null)
            SliverAppBar(
              pinned: _isPLaying,
              automaticallyImplyLeading: false,
              flexibleSpace: player,
              toolbarHeight: context.width * 9 / 16 - context.padding.top,
            ),
          hPad(24),
          FilmEpisodes(
            episodes: widget.movie.episodes,
          ),
          hPad(24),
        ],
      );

  SliverToBoxAdapter hPad(double value) =>
      SliverToBoxAdapter(child: SizedBox(height: value));
}
