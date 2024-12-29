import 'package:cine_world/logic/bloc/theme/theme_bloc.dart';
import 'package:cine_world/logic/cubit/theme/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ThemeIndicatorWidget extends StatelessWidget {
  const ThemeIndicatorWidget({super.key, required this.bloc});

  final ThemeBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      bloc: bloc,
      buildWhen: (previous, current) => current is IndicatorState,
      builder: (context, state) {
        if (state is IndicatorState) {
          final hex = context.read<ThemeCubit>().state;
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 14.0),
            child: AnimatedSmoothIndicator(
              activeIndex: state.index,
              count: state.size,
              effect: ScaleEffect(
                activeDotColor: Color(hex),
                dotWidth: 12,
                dotHeight: 12,
                scale: 1.3,
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
