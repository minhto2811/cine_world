import 'package:cine_world/data/use_cases/get_banner_ad_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

part 'banner_event.dart';
part 'banner_state.dart';

class BannerBloc extends Bloc<BannerEvent, BannerState> {
  BannerBloc({
    required GetBannerAdUseCase getBannerAdModUseCase,
  })  : _getBannerAdModUseCase = getBannerAdModUseCase,
        super(BannerInitial()) {
    on<InitialEvent>(_initialEvent);
  }

  final GetBannerAdUseCase _getBannerAdModUseCase;
  BannerAd? _ad;
  bool _isReload = true;

  void _initialEvent(InitialEvent event, Emitter<BannerState> emit) async {
    try {
      _ad = await _getBannerAdModUseCase.call();
      emit(LoadBannerState(ad: _ad));
    } catch (e) {
      debugPrint('Banner error: $e');
      if (!_isReload) return;
      _isReload = false;
      add(const InitialEvent());
    }
  }

  @override
  Future<void> close() {
    _ad?.dispose();
    return super.close();
  }
}
