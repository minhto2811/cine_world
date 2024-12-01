part of 'language_cubit.dart';

final class LanguageState extends Equatable {
  final String? languageCode;

  const LanguageState({this.languageCode});

  @override
  List<Object?> get props => [languageCode];
}
