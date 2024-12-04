import 'package:cine_world/data/models/episodes.dart';
import 'package:isar/isar.dart';

@Collection()
class Movie {
  late Id mId;
  final String id; //_id
  final String name;
  final String slug;
  @ignore
  final Time created;
  @ignore
  final Time modified;
  final String originName; //origin_name
  final String content;
  final String type;
  final String status;
  final String posterUrl; //poster_url
  final String thumbUrl; //thumb_url
  final bool isCopyright; //is_copyright
  final bool subDocquyen; //sub_docquyen
  final bool chieurap;
  final String trailerUrl; //trailer_url - empty
  final String time; // 30 phút/tập
  final String episodeCurrent; //episode_current
  final String episodeTotal; //episode_total
  final String quality;
  final String lang;
  final String notify; //empty
  final String showtimes; //empty
  final int year; //2023
  final int view; //0
  final List<String> actor;
  final List<String> director;
  final List<MovieInfo> category;
  final List<MovieInfo> country;
  final List<Episodes> episodes;

  Movie({
    required this.id,
    required this.name,
    required this.slug,
    required this.created,
    required this.modified,
    required this.originName,
    required this.content,
    required this.type,
    required this.status,
    required this.posterUrl,
    required this.thumbUrl,
    required this.isCopyright,
    required this.subDocquyen,
    required this.chieurap,
    required this.trailerUrl,
    required this.time,
    required this.episodeCurrent,
    required this.episodeTotal,
    required this.quality,
    required this.lang,
    required this.notify,
    required this.showtimes,
    required this.year,
    required this.view,
    required this.actor,
    required this.director,
    required this.category,
    required this.country,
    required this.episodes,
  }) : mId = id.hashCode;

  factory Movie.fromJson(Map<String, dynamic> response) {
    final json = response['movie'];
    return Movie(
      id: json['_id'],
      name: json['name'],
      slug: json['slug'],
      created: Time.fromJson(json['created']),
      modified: Time.fromJson(json['modified']),
      originName: json['origin_name'],
      content: json['content'],
      type: json['type'],
      status: json['status'],
      posterUrl: json['poster_url'],
      thumbUrl: json['thumb_url'],
      isCopyright: json['is_copyright'],
      subDocquyen: json['sub_docquyen'],
      chieurap: json['chieurap'],
      trailerUrl: json['trailer_url'],
      time: json['time'],
      episodeCurrent: json['episode_current'],
      episodeTotal: json['episode_total'],
      quality: json['quality'],
      lang: json['lang'],
      notify: json['notify'],
      showtimes: json['showtimes'],
      year: json['year'],
      view: json['view'],
      actor: List<String>.from(json['actor']),
      director: List<String>.from(json['director']),
      category: MovieInfo.parseMovieInfoList(json['category'] as List<dynamic>),
      country: MovieInfo.parseMovieInfoList(json['country'] as List<dynamic>),
      episodes:
          Episodes.parseEpisodesList(response['episodes'] as List<dynamic>),
    );
  }
}

class MovieInfo {
  final String id;
  final String name;
  final String slug;

  const MovieInfo({required this.id, required this.name, required this.slug});

  static List<MovieInfo> parseMovieInfoList(List<dynamic> jsonList) {
    return jsonList
        .map((e) => MovieInfo.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  factory MovieInfo.fromJson(Map<String, dynamic> json) =>
      MovieInfo(id: json['id'], name: json['name'], slug: json['slug']);
}


class Time {
  final String time;

  const Time({required this.time});

  factory Time.fromJson(Map<String, dynamic> json) => Time(time: json['time']);
}
