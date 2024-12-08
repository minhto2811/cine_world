import 'package:cine_world/data/models/preview.dart';
import 'package:cine_world/data/models/search_history.dart';
import 'package:cine_world/data/use_cases/delete_search_history_use_case.dart';
import 'package:cine_world/data/use_cases/get_search_histories_use_case.dart';
import 'package:cine_world/data/use_cases/insert_search_history_use_case.dart';
import 'package:cine_world/data/use_cases/search_previews_use_case.dart';
import 'package:cine_world/presentation/route.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({
    required SearchPreviewsUseCase searchPreviewsUseCase,
    required DeleteSearchHistoryUseCase deleteSearchHistoryUseCase,
    required GetSearchHistoriesUseCase getSearchHistoriesUseCase,
    required InsertSearchHistoryUseCase insertSearchHistoryUseCase,
  })  : _searchPreviewsUseCase = searchPreviewsUseCase,
        _deleteSearchHistoryUseCase = deleteSearchHistoryUseCase,
        _getSearchHistoriesUseCase = getSearchHistoriesUseCase,
        _insertSearchHistoryUseCase = insertSearchHistoryUseCase,
        super(SearchInitial()) {
    on<SearchByKeyWordEvent>(_search);
    on<NavigateEvent>(_navigate);
    on<HistoryEvent>(_showHistory);
    on<DeleteHistoryEvent>(_deleteHistory);
  }

  final DeleteSearchHistoryUseCase _deleteSearchHistoryUseCase;
  final GetSearchHistoriesUseCase _getSearchHistoriesUseCase;

  final InsertSearchHistoryUseCase _insertSearchHistoryUseCase;
  final SearchPreviewsUseCase _searchPreviewsUseCase;

  final TextEditingController controller = TextEditingController();

  void _search(SearchByKeyWordEvent event, Emitter<SearchState> emit) async {
    add(const HistoryEvent(isShow: false));
    emit(const LoadingState());
    controller.text = event.keyword;
    FocusManager.instance.primaryFocus?.unfocus();
    try {
      final data =
          await _searchPreviewsUseCase.call(keyword: event.keyword, limit: 10);
      emit(LoadedState(previews: data));
      if (data.isNotEmpty) {
        _insertSearchHistoryUseCase.call(keyword: event.keyword);
      }
    } catch (e) {
      emit(const ErrorState());
    }
  }

  void _navigate(NavigateEvent event, Emitter<SearchState> emit) async {
    await MyRoute.pushNamed(routeName: event.route, arguments: event.arguments);
  }

  void _showHistory(HistoryEvent event, Emitter<SearchState> emit) async {
    if (event.isShow) {
      final data = await _getSearchHistoriesUseCase.call();
      emit(HistoryState(histories: data));
    } else {
      emit(const HistoryState(histories: []));
    }
  }

  void _deleteHistory(
      DeleteHistoryEvent event, Emitter<SearchState> emit) async {
    await _deleteSearchHistoryUseCase.call(id: event.id);
    add(const HistoryEvent(isShow: true));
  }

  @override
  Future<void> close() {
    controller.dispose();
    return super.close();
  }
}
