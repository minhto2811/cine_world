part of 'theme_bloc.dart';

sealed class ThemeState extends Equatable {
  const ThemeState();
}

final class ThemeInitial extends ThemeState {
  @override
  List<Object> get props => [];
}

final class ThemeChanged extends ThemeState {
  final int index;
  final List<AppColor> colors;

  const ThemeChanged({required this.index, required this.colors});

  @override
  List<Object> get props => [index, colors];
}

final class IndicatorState extends ThemeState {
  final int index;
  final int size;

  const IndicatorState({required this.index, required this.size});

  @override
  List<Object> get props => [index, size];
}
