import 'package:cine_world/core/di/injections.dart';
import 'package:cine_world/generated/l10n.dart';
import 'package:cine_world/logic/bloc/settings/settings_bloc.dart';
import 'package:cine_world/logic/cubit/language/language_cubit.dart';
import 'package:cine_world/presentation/route.dart';
import 'package:cine_world/presentation/screens/settings/settings_item_widget.dart';
import 'package:cine_world/presentation/screens/settings/settings_language_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final _bloc = getIt<SettingsBloc>();

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    context.watch<LanguageCubit>().state;
    return SafeArea(
        top: false,
        child: Scaffold(
          appBar: AppBar(
            title: Text(S.current.settings),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SettingsItemWidget(
                  title: S.current.app_theme,
                  icon: "theme",
                  endArrow: true,
                  onTap: () => MyRoute.pushNamed(routeName: MyRoute.theme),
                ),
                SettingsItemWidget(
                  title: S.current.language,
                  icon: "language",
                  endArrow: true,
                  child: const SettingsLanguageWidget(),
                  onTap: () => MyRoute.pushNamed(routeName: MyRoute.language),
                ),
                SettingsItemWidget(
                  title: S.current.support,
                  icon: "support",
                  endArrow: true,
                  onTap: () => _bloc.add(const SupportEvent()),
                ),
                SettingsItemWidget(
                  title: S.current.share,
                  icon: "share",
                  endArrow: true,
                  onTap: () => _bloc.add(const ShareEvent()),
                ),
              ],
            ),
          ),
        ));
  }
}
