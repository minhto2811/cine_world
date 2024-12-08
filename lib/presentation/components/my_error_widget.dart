import 'package:cine_world/core/extensions/context.dart';
import 'package:cine_world/generated/l10n.dart';
import 'package:flutter/material.dart';

class MyErrorWidget extends StatelessWidget {
  const MyErrorWidget(
      {super.key, required this.asset, required this.title, this.onTap});

  final String asset;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/$asset.png',
          width: 260,
        ),
        Text(
          title,
          style: context.textTheme.bodyMedium,
        ),
        const SizedBox(height: 16),
        if (onTap != null)
          GestureDetector(
              onTap: onTap,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.refresh_outlined,
                    color: Color(0xFFFF5510),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    S.current.refresh,
                    style: context.textTheme.bodyLarge!.copyWith(
                      color: const Color(0xFFFF5510),
                    ),
                  )
                ],
              )),
        const SizedBox(height: 80),
      ],
    );
  }
}
