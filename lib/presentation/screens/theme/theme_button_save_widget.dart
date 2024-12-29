import 'package:cine_world/core/extensions/context.dart';
import 'package:cine_world/generated/l10n.dart';
import 'package:cine_world/logic/bloc/theme/theme_bloc.dart';
import 'package:cine_world/logic/cubit/theme/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeButtonSaveWidget extends StatelessWidget {
  const ThemeButtonSaveWidget({super.key, required this.bloc});

  final ThemeBloc bloc;

  @override
  Widget build(BuildContext context) {
    final hex = context.read<ThemeCubit>().state;
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(hex),
          fixedSize: const Size(300, 44),
          elevation: 10,
        ),
        onPressed: () => bloc.add(const ApplyThemeEvent()),
        child: Text(
          S.current.apply,
          style: context.textTheme.titleMedium!.copyWith(
            color: Colors.white,
          ),
        ));
  }
}
