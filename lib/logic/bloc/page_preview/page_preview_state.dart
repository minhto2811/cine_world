part of 'page_preview_bloc.dart';

sealed class PagePreviewState extends Equatable {
  const PagePreviewState();
}

final class PageInitial extends PagePreviewState {
  @override
  List<Object> get props => [];
}

final class LoadingState extends PagePreviewState {
  const LoadingState();

  @override
  List<Object> get props => [];
}


final class LoadedState extends PagePreviewState {
  final List<Preview> movies;

  const LoadedState({required this.movies});

  @override
  List<Object> get props => [movies];
}

final class ErrorState extends PagePreviewState {
  const ErrorState();

  @override
  List<Object> get props => [];
}
