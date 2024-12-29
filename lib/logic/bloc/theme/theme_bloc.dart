import 'package:cine_world/core/theme/palette.dart';
import 'package:cine_world/generated/l10n.dart';
import 'package:cine_world/logic/cubit/theme/theme_cubit.dart';
import 'package:cine_world/presentation/route.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';

part 'theme_event.dart';

part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial()) {
    on<InitialEvent>(_init);
    on<ChangePageEvent>(_changePage);
    on<ApplyThemeEvent>(_applyTheme);
  }

  final List<AppColor> _colors = [
    AppColor(
        paletteColor: Palette.orangeColor,
        name: "",
        asset: "assets/images/theme_orange.png"),
    AppColor(
        paletteColor: Palette.greenColor,
        name: "",
        asset: "assets/images/theme_green.png"),
    AppColor(
        paletteColor: Palette.pinkColor,
        name: "",
        asset: "assets/images/theme_pink.png"),
  ];
  late int _index;


  void _applyTheme(ApplyThemeEvent event, Emitter<ThemeState> emit) {
    final newHex = _colors[_index].paletteColor;
    MyRoute.context.read<ThemeCubit>().changeTheme(hex: newHex);
    MyRoute.pop();
    MyRoute.toast(S.current.change_theme_success, ToastificationType.success);
  }

  void _changePage(ChangePageEvent event, Emitter<ThemeState> emit) {
    emit(IndicatorState(index: event.index, size: _colors.length));
    _index = event.index;
  }

  void _init(InitialEvent event, Emitter<ThemeState> emit) async {
    final hex = MyRoute.context
        .read<ThemeCubit>()
        .state;

    _index = _colors.indexWhere((element) => element.paletteColor == hex, 0);

    emit(ThemeChanged(colors: _colors, index: _index));
    emit(IndicatorState(index: _index, size: _colors.length));
  }
}

class AppColor {
  final int paletteColor;
  final String name;
  final String asset;

  AppColor(
      {required this.paletteColor, required this.name, required this.asset});
}
