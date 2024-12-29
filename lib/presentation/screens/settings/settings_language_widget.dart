import 'package:cine_world/data/models/language.dart';
import 'package:cine_world/logic/cubit/language/language_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsLanguageWidget extends StatelessWidget {
  const SettingsLanguageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final languageCode = context.watch<LanguageCubit>().state;
    final language = Language.findByCode(languageCode);
    return Image.asset(
      language.flag,
      width: 36,
      height: 36,
    );
  }
}
