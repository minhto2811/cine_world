part of 'language_bloc.dart';

sealed class LanguageEvent extends Equatable {
  const LanguageEvent();
}

final class InitialEvent extends LanguageEvent {
  const InitialEvent();
  @override
  List<Object> get props => [];
}

final class ChangeLanguageEvent extends LanguageEvent {
  final String languageCode;
  const ChangeLanguageEvent({required this.languageCode});
  @override
  List<Object> get props => [languageCode];
}