import 'dart:async';

import 'package:cine_world/data/models/preview.dart';
import 'package:cine_world/data/use_cases/get_previews_local_use_case.dart';
import 'package:cine_world/data/use_cases/get_previews_use_case.dart';
import 'package:cine_world/data/use_cases/insert_previews_local_use_case.dart';
import 'package:cine_world/data/use_cases/precache_image_use_case.dart';
import 'package:cine_world/presentation/route.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'page_preview_event.dart';
part 'page_preview_state.dart';

class PagePreviewBloc extends Bloc<PagePreviewEvent, PagePreviewState> {
  PagePreviewBloc({
    required GetPreviewsUseCase getPreviewsUseCase,
    required PrecacheImageUseCase precacheImageUseCase,
    required GetPreviewsLocalUseCase getPreviewLocalUseCase,
    required InsertPreviewLocalUseCase insertPreviewUseCase,
  })  : _getPreviewsUseCase = getPreviewsUseCase,
        _insertPreviewUseCase = insertPreviewUseCase,
        _getPreviewsLocalUseCase = getPreviewLocalUseCase,
        _precacheImageUseCase = precacheImageUseCase,
        super(PageInitial()) {
    on<InitialEvent>(_init);
    on<LoadMoreEvent>(_loadMore);
    on<NavigateEvent>(_navigate);
  }

  final PrecacheImageUseCase _precacheImageUseCase;
  final GetPreviewsLocalUseCase _getPreviewsLocalUseCase;
  final InsertPreviewLocalUseCase _insertPreviewUseCase;
  final GetPreviewsUseCase _getPreviewsUseCase;
  late final String _path;
  final Set<Preview> _movies = {};
  Timer? _timer;

  void _init(InitialEvent event, Emitter<PagePreviewState> emit) {
    _path = event.path;
    add(const LoadMoreEvent());
  }

  void _loadMore(LoadMoreEvent event, Emitter<PagePreviewState> emit) async {
    if (_timer?.isActive == true) return;
    try {
      if (_movies.isEmpty) {
        emit(const LoadingState());
      }
      final page = (_movies.length / 10).ceil() + 1;
      final data = await _getPreviewsUseCase.call(path: _path, page: page);
      _startTimer();
      if (data.isEmpty) return;
      _movies.addAll(data);
      emit(LoadedState(movies: _movies.toList()));
      _insertPreviewUseCase.call(previews: data);
    //  _precacheImageUseCase.call(data.map((e) => e.posterUrl).toList());
    } catch (e) {
      final type = _path.split('/').last;
      final data = await _getPreviewsLocalUseCase.call(
          offset: _movies.length, type: type);
      _movies.addAll(data);
      emit(_movies.isEmpty
          ? const ErrorState()
          : LoadedState(movies: _movies.toList()));
    } finally {
      _timer?.cancel();
    }
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      _timer?.cancel();
    });
  }

  void _navigate(NavigateEvent event, Emitter<PagePreviewState> emit) async {
    await MyRoute.pushNamed(routeName: event.route, arguments: event.arguments);
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
