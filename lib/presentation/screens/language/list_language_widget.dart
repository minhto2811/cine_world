import 'package:cine_world/data/models/language.dart';
import 'package:cine_world/logic/bloc/language/language_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListLanguageWidget extends StatelessWidget {
  const ListLanguageWidget({super.key, required this.bloc});

  final LanguageBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
      bloc: bloc,
      buildWhen: (previous, current) => current is LanguageSelectedState,
      builder: (context, state) {
        if (state is LanguageSelectedState) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: Language.languages.length,
            itemBuilder: (context, index) => RadioListTile(
              title: Row(
                children: [
                  Expanded(child: Text(Language.languages[index].name)),
                  Image.asset(
                    Language.languages[index].flag,
                    width: 36,
                    height: 36,
                  )
                ],
              ),
              groupValue: state.languageCode,
              value: Language.languages[index].languageCode,
              onChanged: (value) =>
                  bloc.add(ChangeLanguageEvent(languageCode: value!)),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
