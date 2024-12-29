import 'package:cine_world/core/theme/palette.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/constants/shared_preferences.dart';

class ThemeCubit extends Cubit<int> {
  ThemeCubit() : super(Palette.orangeColor) {
    _init();
  }

  _init() async {
    final spf = await SharedPreferences.getInstance();
    final hex = spf.getInt(SpfConstants.theme);
    if (hex == null) return;
    emit(hex);
  }

  Future<void> changeTheme({required int hex}) async {
    emit(hex);
    final spf = await SharedPreferences.getInstance();
    spf.setInt(SpfConstants.theme, hex);
  }
}
