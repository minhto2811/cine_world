import 'dart:async';
import 'dart:io';

import 'package:cine_world/core/extensions/context.dart';
import 'package:cine_world/presentation/route.dart';
import 'package:flutter/foundation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

abstract interface class AdModService {
  Future<BannerAd?> getBannerAd();
}

class AdModServiceImpl implements AdModService {
  @override
  Future<BannerAd?> getBannerAd() async {
    final AnchoredAdaptiveBannerAdSize? size =
        await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(
            MyRoute.context.width.truncate());
    final adCompleter = Completer<Ad?>();
    await BannerAd(
      adUnitId: AdModConstant.getBannerAdMobId,
      size: size ?? AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: adCompleter.complete,
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          adCompleter.completeError(error);
        },
      ),
    ).load();
    final bannerAd = await adCompleter.future;
    return bannerAd as BannerAd?;
  }
}

class AdModConstant {
  static String get getBannerAdMobId => _initAdModId(
        kDebugAndroidId: 'ca-app-pub-3940256099942544/6300978111',
        kDebugIosId: 'ca-app-pub-3940256099942544/2934735716',
        kReleaseAndroidId: '',
        kReleaseIosId: '',
      );

  static String _initAdModId({
    required String kDebugIosId,
    required String kDebugAndroidId,
    required String kReleaseIosId,
    required String kReleaseAndroidId,
  }) {
    if (kReleaseMode) {
      if (Platform.isAndroid) {
        return kReleaseAndroidId;
      } else if (Platform.isIOS) {
        return kReleaseIosId;
      } else {
        throw UnsupportedError("Unsupport platform");
      }
    } else {
      if (Platform.isAndroid) {
        return kDebugAndroidId;
      } else if (Platform.isIOS) {
        return kDebugIosId;
      } else {
        throw UnsupportedError("Unsupport platform");
      }
    }
  }
}
