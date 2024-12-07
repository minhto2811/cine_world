import 'package:chewie/chewie.dart';
import 'package:cine_world/logic/bloc/play_video/play_video_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WebView extends StatelessWidget {
  const WebView({super.key, required this.bloc});

  final PlayVideoBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayVideoBloc, PlayVideoState>(
        bloc: bloc,
        buildWhen: (previous, current) => current is LoadedState,
        builder: (context, state) {
          if (state is LoadedState) {
            return Chewie(controller: state.controller);
          }
          return const SizedBox();
        });
  }
}
