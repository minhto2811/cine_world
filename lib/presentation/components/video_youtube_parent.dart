import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoYoutubeParent extends StatelessWidget {
  const VideoYoutubeParent(
      {super.key,
      this.controller,
      this.child,
      this.builder,
      this.onEnterFullScreen,
      this.onExitFullScreen})
      : assert((controller != null && builder != null) || child != null);

  final YoutubePlayerController? controller;
  final Widget? child;
  final Widget Function(BuildContext, Widget)? builder;
  final void Function()? onEnterFullScreen;
  final void Function()? onExitFullScreen;

  @override
  Widget build(BuildContext context) {
    return controller == null
        ? child!
        : YoutubePlayerBuilder(
            onEnterFullScreen: onEnterFullScreen,
            onExitFullScreen: onExitFullScreen,
            player: YoutubePlayer(
              controller: controller!,
              showVideoProgressIndicator: false,
              progressIndicatorColor: Colors.amber,
              progressColors: const ProgressBarColors(
                playedColor: Colors.amber,
                handleColor: Colors.amberAccent,
              ),
              onReady: () {},
            ),
            builder: builder!);
  }
}
