import 'package:cine_world/data/models/movie.dart';
import 'package:cine_world/data/use_cases/get_film_by_slug_local_use_case.dart';
import 'package:cine_world/data/use_cases/get_film_by_slug_use_case.dart';
import 'package:cine_world/data/use_cases/insert_film_local_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'film_event.dart';
part 'film_state.dart';

class FilmBloc extends Bloc<FilmEvent, FilmState> {
  FilmBloc({
    required GetFilmBySlugUseCase getFilmBySlugUseCase,
    required InsertFilmLocalUseCase insertFilmLocalUseCase,
    required GetFilmBySlugLocalUseCase getFilmBySlugLocalUseCase,
  })  : _getFilmBySlugUseCase = getFilmBySlugUseCase,
        _insertFilmLocalUseCase = insertFilmLocalUseCase,
        _getFilmBySlugLocalUseCase = getFilmBySlugLocalUseCase,
        super(FilmInitial()) {
    on<InitialEvent>(_init);
  }

  final InsertFilmLocalUseCase _insertFilmLocalUseCase;
  final GetFilmBySlugLocalUseCase _getFilmBySlugLocalUseCase;
  final GetFilmBySlugUseCase _getFilmBySlugUseCase;

  void _init(InitialEvent event, Emitter<FilmState> emit) async {
    emit(const LoadingState());
    try {
      final slug = ModalRoute.of(event.context)!.settings.arguments as String;
      final movie = await _getFilmBySlugLocalUseCase.call(slug: slug);
      if (movie != null) {
        emit(LoadedState(movie: movie));
      }
      final movieNetwork = await _getFilmBySlugUseCase.call(slug: slug);
      emit(LoadedState(movie: movieNetwork));
      _insertFilmLocalUseCase.call(movie: movieNetwork);
    } catch (e) {
      emit(const ErrorState());
    }finally{

    }
  }
}
