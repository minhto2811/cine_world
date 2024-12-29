

import 'package:cine_world/logic/bloc/theme/theme_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemePagesWidget extends StatelessWidget {
  const ThemePagesWidget({super.key, required this.bloc});
  final ThemeBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
        bloc: bloc,
        buildWhen: (previous, current) => current is ThemeChanged,
        builder: (context,state){
          if(state is ThemeChanged){
            return PageView(
              controller: PageController(initialPage: state.index),
              onPageChanged: (index)=> bloc.add(ChangePageEvent(index: index)),
              children: state.colors.map((e) => Image.asset(e.asset)).toList(),
            );
          }
          return const SizedBox.shrink();
        });
  }
}
