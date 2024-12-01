import 'package:cine_world/presentation/screens/home/home_pages.dart';
import 'package:cine_world/presentation/screens/home/home_tab_bar.dart';
import 'package:cine_world/presentation/screens/home/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _pageController = PageController();
    _tabController.addListener(listener);
  }

  void listener() {
    _pageController.animateToPage(_tabController.index,
        duration: const Duration(milliseconds: 200), curve: Curves.linear);
  }

  @override
  void dispose() {
    _tabController.removeListener(listener);
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFFFF5510),
            title: const HomeSearchBar(),
          ),
          body: Container(
            color: Colors.white,
            child: Column(
              children: [
                HomeTabBar(tabController: _tabController),
                HomePages(pageController: _pageController),
              ],
            ),
          ),
        ));
  }
}
