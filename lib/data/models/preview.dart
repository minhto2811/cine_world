import 'package:isar/isar.dart';
import 'package:toastification/toastification.dart';

part 'preview.g.dart';

@Collection()
class Preview {
  late Id pId; // id isar
  final String id; //_id
  final String name;
  final String slug;
  final String originName; //origin_name
  final String posterUrl; //poster_url
  final String thumbUrl; //thumb_url
  final int year;
  @Index()
  final String type; // phim-moi-cap-nhat, phim-le,...

  Preview({
    required this.id,
    required this.name,
    required this.slug,
    required this.originName,
    required this.posterUrl,
    required this.thumbUrl,
    required this.year,
    required this.type,
  }) : pId = id.hashCode;

  factory Preview.fromJson(Map<String, dynamic> json,String type) {
    return Preview(
      id: json['_id'],
      name: json['name'],
      slug: json['slug'],
      originName: json['origin_name'],
      posterUrl: json['poster_url'],
      thumbUrl: json['thumb_url'],
      year: json['year'],
      type: type,
    );
  }
}
