import 'package:cine_world/core/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/constants/shared_preferences.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(MyThemes.get(name: 'light')) {
    _init();
  }

  _init() async {
    final spf = await SharedPreferences.getInstance();
    final theme = spf.getString(SpfConstants.theme) ?? 'light';
    emit(MyThemes.get(name: theme));
  }

  Future<void> changeTheme({required String theme}) async {
    emit(MyThemes.get(name: theme));
    final spf = await SharedPreferences.getInstance();
    spf.setString(SpfConstants.theme, theme);
  }
}
