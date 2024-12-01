import 'package:cine_world/core/di/injections.dart';
import 'package:cine_world/core/extensions/context.dart';
import 'package:cine_world/core/theme/fonts.dart';
import 'package:cine_world/generated/l10n.dart';
import 'package:cine_world/logic/bloc/splash/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _bloc = getIt<SplashBloc>();


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
          body: Container(
            padding: const EdgeInsets.only(bottom: 8),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color(0xFFFF743E),
                Color(0xFFFF5510),
                Color(0xFFFF6323),
                Color(0xFFFF743E),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
            child: Stack(
              children: [
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Lottie.asset('assets/lotties/clapperboard.json',
                          width: 120, height: 120),
                      Text(
                        S.current.app_name,
                        style: context.textTheme.titleLarge?.copyWith(
                          color: Colors.white,
                          fontFamily: Fonts.bebasNeue,
                          fontSize: 32,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        S.current.slogan,
                        style: context.textTheme.bodyLarge?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Text(
                          S.current.hint_slogan,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          S.current.hold_on,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 4),
                        LinearProgressIndicator(
                          color: Colors.white,
                          minHeight: 6,
                          backgroundColor: Colors.white54,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
