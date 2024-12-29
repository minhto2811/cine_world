part of 'theme_bloc.dart';

sealed class ThemeEvent extends Equatable {
  const ThemeEvent();
}

final class InitialEvent extends ThemeEvent {
  const InitialEvent();
  @override
  List<Object> get props => [];
}

final class ChangePageEvent extends ThemeEvent {
  final int index;
  const ChangePageEvent({required this.index});
  @override
  List<Object> get props => [index];
}

final class ApplyThemeEvent extends ThemeEvent {
  const ApplyThemeEvent();
  @override
  List<Object> get props => [];
}
