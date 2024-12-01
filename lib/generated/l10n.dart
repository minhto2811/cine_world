// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Refresh`
  String get refresh {
    return Intl.message(
      'Refresh',
      name: 'refresh',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred, please try again.`
  String get an_error_occurred {
    return Intl.message(
      'An error occurred, please try again.',
      name: 'an_error_occurred',
      desc: '',
      args: [],
    );
  }

  /// `Latest Release`
  String get latest_release {
    return Intl.message(
      'Latest Release',
      name: 'latest_release',
      desc: '',
      args: [],
    );
  }

  /// `Movies`
  String get movies {
    return Intl.message(
      'Movies',
      name: 'movies',
      desc: '',
      args: [],
    );
  }

  /// `Series`
  String get series {
    return Intl.message(
      'Series',
      name: 'series',
      desc: '',
      args: [],
    );
  }

  /// `TV Shows`
  String get tv_shows {
    return Intl.message(
      'TV Shows',
      name: 'tv_shows',
      desc: '',
      args: [],
    );
  }

  /// `Cartoons`
  String get cartoons {
    return Intl.message(
      'Cartoons',
      name: 'cartoons',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Cine World`
  String get app_name {
    return Intl.message(
      'Cine World',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Watch movies, enjoy every moment.`
  String get slogan {
    return Intl.message(
      'Watch movies, enjoy every moment.',
      name: 'slogan',
      desc: '',
      args: [],
    );
  }

  /// `Step into a world of endless stories and unforgettable moments, where every movie you watch takes you on a journey like no other.`
  String get hint_slogan {
    return Intl.message(
      'Step into a world of endless stories and unforgettable moments, where every movie you watch takes you on a journey like no other.',
      name: 'hint_slogan',
      desc: '',
      args: [],
    );
  }

  /// `Hold on, your movie will be ready soon!`
  String get hold_on {
    return Intl.message(
      'Hold on, your movie will be ready soon!',
      name: 'hold_on',
      desc: '',
      args: [],
    );
  }

  /// `Explore Movies`
  String get intro_title_1 {
    return Intl.message(
      'Explore Movies',
      name: 'intro_title_1',
      desc: '',
      args: [],
    );
  }

  /// `Watch Anytime`
  String get intro_title_2 {
    return Intl.message(
      'Watch Anytime',
      name: 'intro_title_2',
      desc: '',
      args: [],
    );
  }

  /// `Personalized Recommendations`
  String get intro_title_3 {
    return Intl.message(
      'Personalized Recommendations',
      name: 'intro_title_3',
      desc: '',
      args: [],
    );
  }

  /// `Movie Library`
  String get intro_title_4 {
    return Intl.message(
      'Movie Library',
      name: 'intro_title_4',
      desc: '',
      args: [],
    );
  }

  /// `Discover a wide variety of movies, from timeless classics to the latest blockbusters. Explore genres, find your next favorite film, and get ready for an unforgettable movie experience.`
  String get intro_content_1 {
    return Intl.message(
      'Discover a wide variety of movies, from timeless classics to the latest blockbusters. Explore genres, find your next favorite film, and get ready for an unforgettable movie experience.',
      name: 'intro_content_1',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy movies whenever you want, wherever you are. With our easy-to-use platform, you can watch your favorite films at your convenience, whether at home or on the go.`
  String get intro_content_2 {
    return Intl.message(
      'Enjoy movies whenever you want, wherever you are. With our easy-to-use platform, you can watch your favorite films at your convenience, whether at home or on the go.',
      name: 'intro_content_2',
      desc: '',
      args: [],
    );
  }

  /// `Let us guide you to the perfect movie! Based on your watch history, we recommend films tailored to your tastes and preferences, making your movie time even more enjoyable.`
  String get intro_content_3 {
    return Intl.message(
      'Let us guide you to the perfect movie! Based on your watch history, we recommend films tailored to your tastes and preferences, making your movie time even more enjoyable.',
      name: 'intro_content_3',
      desc: '',
      args: [],
    );
  }

  /// `Access an extensive library of movies from all around the world. With a range of genres, languages, and formats, you’ll always find something exciting to watch.`
  String get intro_content_4 {
    return Intl.message(
      'Access an extensive library of movies from all around the world. With a range of genres, languages, and formats, you’ll always find something exciting to watch.',
      name: 'intro_content_4',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
