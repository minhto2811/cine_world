import 'package:cine_world/core/di/injections.dart';
import 'package:cine_world/logic/bloc/banner/banner_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  final _bloc = getIt<BannerBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(const InitialEvent());
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BannerBloc, BannerState>(
      bloc: _bloc,
      buildWhen: (previous, current) => current is LoadBannerState,
      builder: (context, state) {
        if (state is LoadBannerState && state.ad != null) {
          return SizedBox(
            width: state.ad!.size.width.toDouble(),
            height: state.ad!.size.height.toDouble(),
            child: AdWidget(ad: state.ad!),
          );
        }
        return const SizedBox();
      },
    );
  }
}
