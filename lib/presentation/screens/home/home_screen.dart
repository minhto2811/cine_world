import 'package:cine_world/logic/cubit/language/language_cubit.dart';
import 'package:cine_world/presentation/screens/home/home_pages.dart';
import 'package:cine_world/presentation/screens/home/home_tab_bar.dart';
import 'package:cine_world/presentation/screens/home/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ads_plugin/flutter_ads_plugin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
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
    super.build(context);
    context.watch<LanguageCubit>().state;
    return SafeArea(
        top: false,
        child: Scaffold(
          appBar: AppBar(
            title: const HomeSearchBar(),
          ),
          body: Container(
            color: Colors.white,
            child: Column(
              children: [
                HomeTabBar(tabController: _tabController),
                HomePages(pageController: _pageController),
                const FlutterAdsBanner(),
              ],
            ),
          ),
        ));
  }

  @override
  bool get wantKeepAlive => true;
}
