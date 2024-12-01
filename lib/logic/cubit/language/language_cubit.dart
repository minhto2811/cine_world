import 'package:cine_world/core/constants/shared_preferences.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(const LanguageState()) {
    reload();
  }

  Future<void> reload() async {
    final spf = await SharedPreferences.getInstance();
    final languageCode = spf.getString(SpfConstants.languageCode) ?? 'en_US';
    emit(LanguageState(languageCode: languageCode));
  }

  Future<void> changeLanguage({required String languageCode}) async {
    final spf = await SharedPreferences.getInstance();
    spf.setString(SpfConstants.languageCode, languageCode);
    emit(LanguageState(languageCode: languageCode));
  }
}
