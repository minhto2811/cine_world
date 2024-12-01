part of 'page_preview_bloc.dart';

sealed class PagePreviewEvent extends Equatable {
  const PagePreviewEvent();
}


final class InitialEvent extends PagePreviewEvent {
  final String path;

  const InitialEvent({required this.path});

  @override
  List<Object?> get props => [path];
}


final class LoadMoreEvent extends PagePreviewEvent {
  const LoadMoreEvent();

  @override
  List<Object?> get props => [];
}
