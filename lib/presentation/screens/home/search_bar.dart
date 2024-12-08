import 'package:cine_world/core/extensions/context.dart';
import 'package:cine_world/core/theme/fonts.dart';
import 'package:cine_world/generated/l10n.dart';
import 'package:cine_world/presentation/route.dart';
import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(S.current.app_name,
            style: context.textTheme.titleLarge?.copyWith(
              color: Colors.white,
              fontFamily: Fonts.bebasNeue,
            )),
        const Expanded(child: SizedBox()),
        IconButton(
          onPressed: () => MyRoute.pushNamed(routeName: MyRoute.search),
          icon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () => MyRoute.pushNamed(routeName: MyRoute.favourite),
          icon: const Icon(
            Icons.favorite,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
