import 'package:cine_world/core/di/injections.dart';
import 'package:cine_world/logic/bloc/play_video/play_video_bloc.dart';
import 'package:cine_world/presentation/screens/play_video/title_play_video.dart';
import 'package:cine_world/presentation/screens/play_video/web_view.dart';
import 'package:flutter/material.dart';

class PlayVideoScreen extends StatefulWidget {
  const PlayVideoScreen({super.key});

  @override
  State<PlayVideoScreen> createState() => _PlayVideoScreenState();
}

class _PlayVideoScreenState extends State<PlayVideoScreen> {
  final _bloc = getIt<PlayVideoBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(InitialEvent(context: context));
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(body: Column(
          children: [
            TitlePlayVideo(bloc: _bloc),
            Expanded(child: WebView(bloc: _bloc)),
          ],
        )));
  }
}
