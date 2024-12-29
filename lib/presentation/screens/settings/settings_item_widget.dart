import 'package:cine_world/core/extensions/context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsItemWidget extends StatelessWidget {
  const SettingsItemWidget(
      {super.key,
      this.onTap,
      required this.icon,
      required this.title,
      this.endArrow = false,
      this.child});

  final String title;
  final bool endArrow;
  final Widget? child;
  final VoidCallback? onTap;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Row(
        children: [
          Expanded(
              child: Text(title,
                  style: context.textTheme.titleMedium,
                  overflow: TextOverflow.ellipsis)),
          child ?? const SizedBox.shrink(),
        ],
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      leading: SvgPicture.asset(
        "assets/icons/$icon.svg",
        width: 24,
        height: 24,
        colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
      ),
      trailing: endArrow
          ? const Icon(
              Icons.arrow_forward_ios,
              size: 16,
            )
          : null,
    );
  }
}
