import 'package:cine_world/core/di/injections.dart';
import 'package:cine_world/core/extensions/string.dart';
import 'package:cine_world/logic/cubit/language/language_cubit.dart';
import 'package:cine_world/presentation/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toastification/toastification.dart';

import 'generated/l10n.dart';

void main() {
  appInject();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      splitScreenMode: true,
      child: ToastificationWrapper(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => getIt<LanguageCubit>()),
          ],
          child: const _MyApp(),
        ),
      ),
    );
  }
}

class _MyApp extends StatefulWidget {
  const _MyApp();

  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  @override
  Widget build(BuildContext context) {
    final languageCode = context.watch<LanguageCubit>().state.languageCode;
    return MaterialApp(
      navigatorKey: MyRoute.navigatorKey,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: languageCode?.toLocale,
      supportedLocales: S.delegate.supportedLocales,
      routes: MyRoute.routes,
      initialRoute: MyRoute.home,
    );
  }
}
