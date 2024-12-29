part of 'language_bloc.dart';

sealed class LanguageState extends Equatable {
  const LanguageState();
}

final class LanguageInitial extends LanguageState {
  @override
  List<Object> get props => [];
}

final class LanguageSelectedState extends LanguageState {
  final String languageCode;

  const LanguageSelectedState({required this.languageCode});

  @override
  List<Object> get props => [languageCode];
}
