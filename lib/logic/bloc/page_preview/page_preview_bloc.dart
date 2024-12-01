import 'package:cine_world/data/models/preview.dart';
import 'package:cine_world/data/use_cases/get_previews_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'page_preview_event.dart';
part 'page_preview_state.dart';

class PagePreviewBloc extends Bloc<PagePreviewEvent, PagePreviewState> {
  PagePreviewBloc({
    required GetPreviewsUseCase getPreviewsUseCase,
  })  : _getPreviewsUseCase = getPreviewsUseCase,
        super(PageInitial()) {
    on<InitialEvent>(_init);
    on<LoadMoreEvent>(_loadMore);
  }

  final GetPreviewsUseCase _getPreviewsUseCase;
  int _page = 0;
  late final String _path;
  final List<Preview> _movies = [];

  void _init(InitialEvent event, Emitter<PagePreviewState> emit) {
    _path = event.path;
    add(const LoadMoreEvent());
  }

  void _loadMore(LoadMoreEvent event, Emitter<PagePreviewState> emit) async {
    try {
      _page++;
      final data = await _getPreviewsUseCase.call(path: _path, page: _page);
      _movies.addAll(data);
      emit(LoadedState(movies: _movies));
    } catch (e) {
      if (_page > 1) _page--;
      emit(const ErrorState());
      debugPrint('Error: $e');
    }
  }
}
