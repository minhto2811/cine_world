import 'package:cine_world/logic/bloc/search/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchHistory extends StatelessWidget {
  const SearchHistory({super.key, required this.bloc});

  final SearchBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
        bloc: bloc,
        buildWhen: (previous, current) => current is HistoryState,
        builder: (context, state) {
          if (state is HistoryState && state.histories.isNotEmpty) {
            return ListView.separated(
                separatorBuilder: (context, index) =>
                    const Divider(height: 0, thickness: 0.7),
                shrinkWrap: true,
                itemCount: state.histories.length,
                itemBuilder: (context, index) => ListTile(
                      onTap: () => bloc.add(SearchByKeyWordEvent(
                          keyword: state.histories[index].keyword)),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      leading: const Icon(Icons.history),
                      trailing: IconButton(
                          onPressed: () => bloc.add(DeleteHistoryEvent(
                              id: state.histories[index].id)),
                          icon: const Icon(Icons.delete_outline_outlined)),
                      title: Text(state.histories[index].keyword),
                    ));
          }
          return const SizedBox();
        });
  }
}
