import 'package:cine_world/data/models/movie.dart';
import 'package:cine_world/data/use_cases/check_favourite_use_case.dart';
import 'package:cine_world/data/use_cases/delete_favourite_use_case.dart';
import 'package:cine_world/data/use_cases/get_film_by_slug_local_use_case.dart';
import 'package:cine_world/data/use_cases/get_film_by_slug_use_case.dart';
import 'package:cine_world/data/use_cases/insert_favourite_use_case.dart';
import 'package:cine_world/data/use_cases/insert_film_local_use_case.dart';
import 'package:cine_world/generated/l10n.dart';
import 'package:cine_world/presentation/route.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';

part 'film_event.dart';
part 'film_state.dart';

class FilmBloc extends Bloc<FilmEvent, FilmState> {
  FilmBloc({
    required GetFilmBySlugUseCase getFilmBySlugUseCase,
    required InsertFilmLocalUseCase insertFilmLocalUseCase,
    required CheckFavouriteUseCase checkFavouriteUseCase,
    required InsertFavouriteUseCase insertFavouriteUseCase,
    required DeleteFavouriteUseCase deleteFavouriteUseCase,
    required GetFilmBySlugLocalUseCase getFilmBySlugLocalUseCase,
  })  : _getFilmBySlugUseCase = getFilmBySlugUseCase,
        _insertFilmLocalUseCase = insertFilmLocalUseCase,
        _checkFavouriteUseCase = checkFavouriteUseCase,
        _insertFavouriteUseCase = insertFavouriteUseCase,
        _deleteFavouriteUseCase = deleteFavouriteUseCase,
        _getFilmBySlugLocalUseCase = getFilmBySlugLocalUseCase,
        super(FilmInitial()) {
    on<InitialEvent>(_init);
    on<CheckFavouriteEvent>(_checkFavourite);
    on<FavouriteEvent>(_favourite);
  }

  final InsertFavouriteUseCase _insertFavouriteUseCase;
  final DeleteFavouriteUseCase _deleteFavouriteUseCase;
  final CheckFavouriteUseCase _checkFavouriteUseCase;
  final InsertFilmLocalUseCase _insertFilmLocalUseCase;
  final GetFilmBySlugLocalUseCase _getFilmBySlugLocalUseCase;
  final GetFilmBySlugUseCase _getFilmBySlugUseCase;
  late String _slug;

  void _init(InitialEvent event, Emitter<FilmState> emit) async {
    emit(const LoadingState());
    try {
      _slug = ModalRoute.of(event.context)!.settings.arguments as String;
      final movieNetwork = await _getFilmBySlugUseCase.call(slug: _slug);
      emit(LoadedState(movie: movieNetwork));
      _insertFilmLocalUseCase.call(movie: movieNetwork);
    } catch (e) {
      final movie = await _getFilmBySlugLocalUseCase.call(slug: _slug);
      if (movie != null) {
        emit(LoadedState(movie: movie));
        return;
      }
      emit(const ErrorState());
    } finally {
      add(CheckFavouriteEvent(slug: _slug));
    }
  }

  void _checkFavourite(
      CheckFavouriteEvent event, Emitter<FilmState> emit) async {
    final isFavourite = await _checkFavouriteUseCase.call(slug: event.slug);
    emit(FavoriteState(isFavourite: isFavourite));
  }

  void _favourite(FavouriteEvent event, Emitter<FilmState> emit) {
    emit(FavoriteState(isFavourite: !event.isFavourite));
    if (event.isFavourite) {
      _deleteFavouriteUseCase.call(slug: _slug);
      MyRoute.toast(S.current.removed_from_favorites);
    } else {
      _insertFavouriteUseCase.call(slug: _slug);
      MyRoute.toast(S.current.added_to_favorites, ToastificationType.success);
    }
  }
}
