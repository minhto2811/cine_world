import 'package:cine_world/core/di/injections.dart';
import 'package:cine_world/generated/l10n.dart';
import 'package:cine_world/logic/bloc/theme/theme_bloc.dart';
import 'package:cine_world/presentation/screens/theme/theme_button_save_widget.dart';
import 'package:cine_world/presentation/screens/theme/theme_indicator_widget.dart';
import 'package:cine_world/presentation/screens/theme/theme_pages_widget.dart';
import 'package:flutter/material.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  final _bloc = getIt<ThemeBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(const InitialEvent());
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
          appBar: AppBar(
            title: Text(S.current.change_theme),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(child: ThemePagesWidget(bloc: _bloc)),
                ThemeIndicatorWidget(bloc: _bloc),
                ThemeButtonSaveWidget(bloc: _bloc),
              ],
            ),
          ),
        ));
  }
}
