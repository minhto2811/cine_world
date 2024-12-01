import 'package:cine_world/presentation/route.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<InitialEvent>(_init);
  }

  void _init(InitialEvent event, Emitter<SplashState> emit) async {
    await Future.delayed(const Duration(seconds: 2));
    MyRoute.pushNamed(routeName: MyRoute.introduction);
  }
}
