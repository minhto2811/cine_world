import 'package:cine_world/generated/l10n.dart';
import 'package:flutter/material.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      isScrollable: true,
      tabAlignment: TabAlignment.start,
      padding: EdgeInsets.zero,
      indicatorColor: const Color(0xFFFF5510),
      labelColor: const Color(0xFFFF5510),
      tabs: [
        Tab(text: S.current.latest_release),
        Tab(text: S.current.tv_shows),
        Tab(text: S.current.movies),
        Tab(text: S.current.series),
        Tab(text: S.current.cartoons),
      ],
    );
  }
}
