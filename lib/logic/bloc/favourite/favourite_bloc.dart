import 'package:cine_world/data/models/preview.dart';
import 'package:cine_world/data/use_cases/get_favourites_use_case.dart';
import 'package:cine_world/presentation/route.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'favourite_event.dart';
part 'favourite_state.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  FavouriteBloc(
      {
      required GetFavouritesUseCase getFavouritesUseCase})
      : _getFavouritesUseCase = getFavouritesUseCase,

        super(FavouriteInitial()) {
    on<InitialEvent>(_init);
    on<NavigateEvent>(_navigate);
  }

  final GetFavouritesUseCase _getFavouritesUseCase;
  late List<Preview> _previews;

  void _init(InitialEvent event, Emitter<FavouriteState> emit) async {
    _previews = await _getFavouritesUseCase.call();
    emit(FavouriteLoadedState(previews: _previews));
  }

  void _navigate(NavigateEvent event, Emitter<FavouriteState> emit) async {
    await MyRoute.pushNamed(routeName: event.route, arguments: event.arguments);
    add(const InitialEvent());
  }
}
