import 'package:isar/isar.dart';

part 'favourite.g.dart';

@Collection()
class Favourite {
  final Id id;
  final String slug;

  const Favourite({required this.id, required this.slug});

  factory Favourite.create({required String slug}) =>
      Favourite(id: Isar.autoIncrement, slug: slug);
}
