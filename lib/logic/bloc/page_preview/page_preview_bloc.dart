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
  bool _isLoading = false;

  void _init(InitialEvent event, Emitter<PagePreviewState> emit) {
    _path = event.path;
    add(const LoadMoreEvent());
  }

  void _loadMore(LoadMoreEvent event, Emitter<PagePreviewState> emit) async {
    if (_isLoading) return;
    try {
      if(_movies.isEmpty){
        emit(const LoadingState());
      }
      _isLoading = true;
      _page++;
      final data = await _getPreviewsUseCase.call(path: _path, page: _page);
      if (data.isEmpty) {
        _page--;
        return;
      }
      _movies.addAll(data);
      emit(LoadedState(movies: _movies));
    } catch (e) {
      if (_page > 1) _page--;
      if (_movies.isEmpty) emit(const ErrorState());
      debugPrint('Error: $e');
    } finally {
      _isLoading = false;
    }
  }
}
