import 'package:cine_world/core/di/injections.dart';
import 'package:cine_world/logic/bloc/search/search_bloc.dart';
import 'package:cine_world/presentation/screens/search/search_history.dart';
import 'package:cine_world/presentation/screens/search/search_result.dart';
import 'package:cine_world/presentation/screens/search/search_view.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _bloc = getIt<SearchBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(const HistoryEvent(isShow: true));
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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: SearchView(
              controller: _bloc.controller,
              onTap: () => _bloc.add(const HistoryEvent(isShow: true)),
              onSearch: (value) =>
                  _bloc.add(SearchByKeyWordEvent(keyword: value))),
        ),
        body: Column(
          children: [
            SearchHistory(bloc: _bloc),
            Expanded(child: SearchResult(bloc: _bloc)),
          ],
        ),
      ),
    );
  }
}
