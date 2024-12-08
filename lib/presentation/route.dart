import 'package:cine_world/presentation/screens/favourite/favourite_screen.dart';
import 'package:cine_world/presentation/screens/film/film_screen.dart';
import 'package:cine_world/presentation/screens/home/home_screen.dart';
import 'package:cine_world/presentation/screens/introduction/introduction_screen.dart';
import 'package:cine_world/presentation/screens/play_video/play_video_screen.dart';
import 'package:cine_world/presentation/screens/search/search_screen.dart';
import 'package:cine_world/presentation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class MyRoute {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static BuildContext get context => navigatorKey.currentContext!;

  static const splash = '/splash';
  static const introduction = '/introduction';
  static const home = '/home';
  static const film = '/film';
  static const playVideo = '/playVideo';
  static const favourite = '/favourite';
  static const search = '/search';

  static Map<String, Widget Function(BuildContext context)> routes = {
    splash: (_) => const SplashScreen(),
    introduction: (_) => IntroductionScreen(),
    home: (_) => const HomeScreen(),
    film: (_) => const FilmScreen(),
    playVideo: (_) => const PlayVideoScreen(),
    favourite: (_) => const FavouriteScreen(),
    search: (_) => const SearchScreen(),
  };

  static toast(String message,
          [ToastificationType type = ToastificationType.error,
          bool showProgressBar = false]) =>
      toastification.show(
        context: context,
        type: type,
        alignment: Alignment.topCenter,
        showProgressBar: showProgressBar,
        title: Text(message),
        autoCloseDuration: const Duration(seconds: 3),
      );

  static void popUntil({required String routeName}) =>
      Navigator.popUntil(context, (route) => route.settings.name == routeName);

  static Future<T?> pushNamed<T extends Object?>(
          {required String routeName, Object? arguments}) async =>
      await Navigator.pushNamed(context, routeName, arguments: arguments);

  static Future<T?> pushNamedAndRemoveUntil<T extends Object?>({
    required String routeName,
    required bool Function(Route<dynamic> route) predicate,
    Object? arguments,
  }) async =>
      await Navigator.pushNamedAndRemoveUntil(
          context, routeName, (route) => predicate(route),
          arguments: arguments);

  static pop<T extends Object?>({T? arguments}) =>
      Navigator.pop(context, arguments);
}
