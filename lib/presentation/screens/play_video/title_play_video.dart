import 'package:cine_world/logic/bloc/play_video/play_video_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TitlePlayVideo extends StatelessWidget {
  const TitlePlayVideo({super.key, required this.bloc});

  final PlayVideoBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayVideoBloc, PlayVideoState>(
      bloc: bloc,
      buildWhen: (previous, current) => current is TitleState,
      builder: (context, state) {
        if(state is TitleState && state.title != null){
          return AppBar(
            title: Text(state.title!),
          );
        }
        return const SizedBox();
      },
    );
  }
}
