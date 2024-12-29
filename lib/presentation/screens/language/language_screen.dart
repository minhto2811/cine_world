import 'package:cine_world/core/di/injections.dart';
import 'package:cine_world/generated/l10n.dart';
import 'package:cine_world/logic/bloc/language/language_bloc.dart';
import 'package:cine_world/logic/cubit/language/language_cubit.dart';
import 'package:cine_world/presentation/screens/language/list_language_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  final _bloc = getIt<LanguageBloc>();

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
    context.watch<LanguageCubit>().state;
    return SafeArea(
        top: false,
        child: Scaffold(
          appBar: AppBar(
            title: Text(S.current.change_language),
          ),
          body: ListLanguageWidget(bloc: _bloc),
        ));
  }
}
