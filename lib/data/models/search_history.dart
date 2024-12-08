import 'package:isar/isar.dart';

part 'search_history.g.dart';

@Collection(accessor: 'searchHistories')
class SearchHistory {
  final Id id;
  @Index(type: IndexType.value, unique: true, replace: true)
  final String keyword;

  const SearchHistory({required this.id, required this.keyword});

  factory SearchHistory.create({required String keyword}) =>
      SearchHistory(id: Isar.autoIncrement, keyword: keyword);
}
