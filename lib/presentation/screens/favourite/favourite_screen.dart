import 'package:cine_world/core/di/injections.dart';
import 'package:cine_world/core/extensions/context.dart';
import 'package:cine_world/generated/l10n.dart';
import 'package:cine_world/logic/bloc/favourite/favourite_bloc.dart';
import 'package:cine_world/presentation/components/preview_film.dart';
import 'package:cine_world/presentation/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  final _bloc = getIt<FavouriteBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(const InitialEvent());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('didChangeDependencies FavouriteScreen');
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
          title: Text(S.current.favourite),
        ),
        body: BlocBuilder<FavouriteBloc, FavouriteState>(
          bloc: _bloc,
          buildWhen: (previous, current) => current is FavouriteLoadedState,
          builder: (context, state) {
            if (state is FavouriteLoadedState) {
              if (state.previews.isEmpty) {
                return SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Lottie.asset('assets/lotties/empty.json', width: 220),
                      Text(
                        S.current.favorites_list_empty,
                        style: context.textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 160),
                    ],
                  ),
                );
              }
              return GridView.builder(
                cacheExtent: 1000,
                physics: const BouncingScrollPhysics(),
                semanticChildCount: state.previews.length,
                itemCount: state.previews.length,
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 7 / 10),
                itemBuilder: (context, index) => PreviewFilm(
                  model: state.previews[index],
                  onTap: () => _bloc.add(NavigateEvent(
                      route: MyRoute.film,
                      arguments: state.previews[index].slug)),
                ),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
