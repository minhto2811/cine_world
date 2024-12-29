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

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Vietnamese`
  String get vietnamese {
    return Intl.message(
      'Vietnamese',
      name: 'vietnamese',
      desc: '',
      args: [],
    );
  }

  /// `Chinese`
  String get chinese {
    return Intl.message(
      'Chinese',
      name: 'chinese',
      desc: '',
      args: [],
    );
  }

  /// `Korean`
  String get korean {
    return Intl.message(
      'Korean',
      name: 'korean',
      desc: '',
      args: [],
    );
  }

  /// `Spanish`
  String get spanish {
    return Intl.message(
      'Spanish',
      name: 'spanish',
      desc: '',
      args: [],
    );
  }

  /// `Thai`
  String get thai {
    return Intl.message(
      'Thai',
      name: 'thai',
      desc: '',
      args: [],
    );
  }

  /// `Added to favorites`
  String get added_to_favorites {
    return Intl.message(
      'Added to favorites',
      name: 'added_to_favorites',
      desc: '',
      args: [],
    );
  }

  /// `Removed from favorites`
  String get removed_from_favorites {
    return Intl.message(
      'Removed from favorites',
      name: 'removed_from_favorites',
      desc: '',
      args: [],
    );
  }

  /// `Listening...`
  String get listening {
    return Intl.message(
      'Listening...',
      name: 'listening',
      desc: '',
      args: [],
    );
  }

  /// `Didn't find a movie that matches the keyword`
  String get not_found_movie {
    return Intl.message(
      'Didn\'t find a movie that matches the keyword',
      name: 'not_found_movie',
      desc: '',
      args: [],
    );
  }

  /// `Feature not available on your device`
  String get feature_not_available {
    return Intl.message(
      'Feature not available on your device',
      name: 'feature_not_available',
      desc: '',
      args: [],
    );
  }

  /// `Share with friends`
  String get share {
    return Intl.message(
      'Share with friends',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Support`
  String get support {
    return Intl.message(
      'Support',
      name: 'support',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Favorites list is empty.`
  String get favorites_list_empty {
    return Intl.message(
      'Favorites list is empty.',
      name: 'favorites_list_empty',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get change_language {
    return Intl.message(
      'Change Language',
      name: 'change_language',
      desc: '',
      args: [],
    );
  }

  /// `Change your app theme for success`
  String get change_theme_success {
    return Intl.message(
      'Change your app theme for success',
      name: 'change_theme_success',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message(
      'Apply',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Change Theme`
  String get change_theme {
    return Intl.message(
      'Change Theme',
      name: 'change_theme',
      desc: '',
      args: [],
    );
  }

  /// `App Theme`
  String get app_theme {
    return Intl.message(
      'App Theme',
      name: 'app_theme',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Favourite`
  String get favourite {
    return Intl.message(
      'Favourite',
      name: 'favourite',
      desc: '',
      args: [],
    );
  }

  /// `Movies You May Like`
  String get movies_you_may_like {
    return Intl.message(
      'Movies You May Like',
      name: 'movies_you_may_like',
      desc: '',
      args: [],
    );
  }

  /// `Quality`
  String get quality {
    return Intl.message(
      'Quality',
      name: 'quality',
      desc: '',
      args: [],
    );
  }

  /// `Year`
  String get year {
    return Intl.message(
      'Year',
      name: 'year',
      desc: '',
      args: [],
    );
  }

  /// `Director`
  String get director {
    return Intl.message(
      'Director',
      name: 'director',
      desc: '',
      args: [],
    );
  }

  /// `Actors`
  String get actors {
    return Intl.message(
      'Actors',
      name: 'actors',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get category {
    return Intl.message(
      'Category',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `Duration`
  String get duration {
    return Intl.message(
      'Duration',
      name: 'duration',
      desc: '',
      args: [],
    );
  }

  /// `Spoiler`
  String get spoiler {
    return Intl.message(
      'Spoiler',
      name: 'spoiler',
      desc: '',
      args: [],
    );
  }

  /// `Server Name`
  String get server_name {
    return Intl.message(
      'Server Name',
      name: 'server_name',
      desc: '',
      args: [],
    );
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
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'ko'),
      Locale.fromSubtags(languageCode: 'th'),
      Locale.fromSubtags(languageCode: 'vi'),
      Locale.fromSubtags(languageCode: 'zh'),
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
