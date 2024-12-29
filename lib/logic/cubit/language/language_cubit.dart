import 'package:cine_world/core/constants/shared_preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LanguageCubit extends Cubit<String> {
  LanguageCubit() : super('en') {
    reload();
  }

  Future<void> reload() async {
    final spf = await SharedPreferences.getInstance();
    final languageCode = spf.getString(SpfConstants.languageCode) ;
    if(languageCode == null) return;
    emit(languageCode);
  }

  Future<void> changeLanguage({required String languageCode}) async {
    final spf = await SharedPreferences.getInstance();
    spf.setString(SpfConstants.languageCode, languageCode);
    emit(languageCode);
  }
}
