import 'package:cine_world/data/services/admod_service.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class GetNativeAdUseCase {
  final AdModService _adModService;

  const GetNativeAdUseCase({required AdModService adModService})
      : _adModService = adModService;

  Future<NativeAd?> call() async => await _adModService.getNativeAd();
}
