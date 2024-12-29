import 'package:cine_world/logic/cubit/language/language_cubit.dart';
import 'package:cine_world/presentation/route.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(LanguageInitial()) {
    on<InitialEvent>(_init);
    on<ChangeLanguageEvent>(_changeLanguage);
  }

  void _init(InitialEvent event, Emitter<LanguageState> emit) async {
    final languageCode = MyRoute.context.read<LanguageCubit>().state;
    emit(LanguageSelectedState(languageCode: languageCode));
  }

  void _changeLanguage(
      ChangeLanguageEvent event, Emitter<LanguageState> emit) async {
    MyRoute.context
        .read<LanguageCubit>()
        .changeLanguage(languageCode: event.languageCode);
    emit(LanguageSelectedState(languageCode: event.languageCode));
  }
}
