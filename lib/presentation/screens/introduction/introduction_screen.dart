import 'package:cine_world/core/extensions/context.dart';
import 'package:cine_world/presentation/route.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart' as ob;

import '../../../generated/l10n.dart';

class IntroductionScreen extends StatelessWidget {
  IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Container(
            padding: EdgeInsets.only(top: context.padding.top),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color(0xFFF88253),
                Color(0xFFE84100),
                Color(0xFFF88253),
                Color(0xFFFF5510),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
            child: ob.IntroductionScreen(
              onDone: () => MyRoute.pushNamedAndRemoveUntil(
                  routeName: MyRoute.home, predicate: (_) => false),
              onSkip: () => MyRoute.pushNamedAndRemoveUntil(
                  routeName: MyRoute.home, predicate: (_) => false),
              back: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              showSkipButton: true,
              skip: Text(S.current.skip,
                  style: context.textTheme.titleMedium?.copyWith(
                    color: Colors.black,
                  )),
              next: const Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
              globalBackgroundColor: Colors.white,
              done: Text(S.current.done,
                  style: context.textTheme.titleMedium?.copyWith(
                    color: Colors.black,
                  )),
              dotsDecorator: ob.DotsDecorator(
                size: const Size.square(10.0),
                activeSize: const Size(20.0, 10.0),
                activeColor: Theme.of(context).colorScheme.secondary,
                color: Colors.black26,
                spacing: const EdgeInsets.symmetric(horizontal: 3.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
              ),
              curve: Curves.fastLinearToSlowEaseIn,
              allowImplicitScrolling: true,
              autoScrollDuration: 3000,
              infiniteAutoScroll: false,
              pages: _pages,
            )),
      ),
    );
  }

  final pageDecoration = ob.PageDecoration(
    titleTextStyle: MyRoute.context.textTheme.titleLarge!,
    bodyTextStyle: MyRoute.context.textTheme.bodyMedium!,
    bodyPadding: const EdgeInsets.symmetric(horizontal: 16),
    pageColor: Colors.white,
    imagePadding: EdgeInsets.zero,
  );

  List<ob.PageViewModel> get _pages => [
        ob.PageViewModel(
          title: S.current.intro_title_1,
          body: S.current.intro_content_1,
          image: _buildImage('intro_1'),
          decoration: pageDecoration,
        ),
        ob.PageViewModel(
          title: S.current.intro_title_2,
          body: S.current.intro_content_2,
          image: _buildImage('intro_2'),
          decoration: pageDecoration,
        ),
        ob.PageViewModel(
          title: S.current.intro_title_3,
          body: S.current.intro_content_3,
          image: _buildImage('intro_3'),
          decoration: pageDecoration,
        ),
        ob.PageViewModel(
          title: S.current.intro_title_4,
          body: S.current.intro_content_4,
          image: _buildImage('intro_4'),
          decoration: pageDecoration,
        ),
      ];

  Widget _buildImage(String assetName, [double width = 350]) =>
      Image.asset('assets/images/$assetName.png', width: width);
}
