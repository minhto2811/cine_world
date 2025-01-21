import 'package:cine_world/data/services/notificarion_service.dart';
import 'package:cine_world/data/use_cases/check_first_time_use_case.dart';
import 'package:cine_world/presentation/route.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc({
    required CheckFirstTimeUseCase checkFirstTimeUseCase,
  })  : _checkFirstTimeUseCase = checkFirstTimeUseCase,
        super(SplashInitial()) {
    on<InitialEvent>(_init);
  }

  final CheckFirstTimeUseCase _checkFirstTimeUseCase;

  void _init(InitialEvent event, Emitter<SplashState> emit) async {
    NotificationService.requestPermissions();
    NotificationService.setNotificationDefaults();
    await Future.delayed(const Duration(seconds: 2));
    final isFirstTime = await _checkFirstTimeUseCase.call();
    if (!isFirstTime) {
      MyRoute.pushNamedAndRemoveUntil(
          routeName: MyRoute.home, predicate: (_) => false);
      return;
    }
    MyRoute.pushNamed(routeName: MyRoute.introduction);
  }
}
