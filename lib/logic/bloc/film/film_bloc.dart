

import 'dart:developer';

import 'package:cine_world/data/models/movie.dart';
import 'package:cine_world/data/use_cases/get_film_by_slug_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'film_event.dart';
part 'film_state.dart';

class FilmBloc extends Bloc<FilmEvent, FilmState> {
  FilmBloc({required GetFilmBySlugUseCase getFilmBySlugUseCase})
      : _getFilmBySlugUseCase = getFilmBySlugUseCase,
        super(FilmInitial()) {
    on<InitialEvent>(_init);
  }

  final GetFilmBySlugUseCase _getFilmBySlugUseCase;

  void _init(InitialEvent event, Emitter<FilmState> emit) async {
    emit(const LoadingState());
    try {
      final slug = ModalRoute.of(event.context)!.settings.arguments as String;
      final movie = await _getFilmBySlugUseCase.call(slug: slug);
      log(movie.trailerUrl);
      emit(LoadedState(movie: movie));
    } catch (e) {
      emit(const ErrorState());
      debugPrint('Error: $e');
    }
  }
}
