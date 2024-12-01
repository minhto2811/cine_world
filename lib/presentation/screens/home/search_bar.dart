import 'package:cine_world/core/extensions/context.dart';
import 'package:cine_world/core/theme/fonts.dart';
import 'package:cine_world/generated/l10n.dart';
import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key, this.onSearch});

  final VoidCallback? onSearch;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(S.current.app_name,
            style: context.textTheme.titleLarge?.copyWith(
              color: Colors.white,
              fontFamily: Fonts.bebasNeue,
            )),
        GestureDetector(
          onTap: onSearch,
          child: const Icon(
            Icons.search,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
