
class Preview {
  final String id; //_id
  final String name;
  final String slug;
  final String originName; //origin_name
  final String posterUrl; //poster_url
  final String thumbUrl; //thumb_url
  final int year;

  const Preview({
    required this.id,
    required this.name,
    required this.slug,
    required this.originName,
    required this.posterUrl,
    required this.thumbUrl,
    required this.year,
  });

  factory Preview.fromJson(Map<String, dynamic> json) {
      return Preview(
        id: json['_id'],
        name: json['name'],
        slug: json['slug'],
        originName: json['origin_name'],
        posterUrl: json['poster_url'],
        thumbUrl: json['thumb_url'],
        year: json['year'],
      );
  }
}
