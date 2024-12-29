import 'package:cine_world/data/services/admod_service.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class GetBannerAdUseCase {
  final AdModService _adModService;

  const GetBannerAdUseCase({required AdModService adModService})
      : _adModService = adModService;

  Future<BannerAd?> call() async => await _adModService.getBannerAd();
}
