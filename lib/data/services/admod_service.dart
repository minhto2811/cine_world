import 'dart:async';
import 'dart:io';

import 'package:cine_world/core/extensions/context.dart';
import 'package:cine_world/presentation/route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

abstract interface class AdModService {
  Future<BannerAd?> getBannerAd();

  Future<NativeAd?> getNativeAd();
}

class AdModServiceImpl implements AdModService {
  @override
  Future<BannerAd?> getBannerAd() async {
    final AnchoredAdaptiveBannerAdSize? size =
        await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(
            MyRoute.context.width.truncate());
    final adCompleter = Completer<Ad?>();
    BannerAd(
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

  @override
  Future<NativeAd?> getNativeAd() async {
    final adCompleter = Completer<Ad?>();
    NativeAd(
            adUnitId: AdModConstant.getNativeAdMobId,
            factoryId: '',
            listener: NativeAdListener(
                onAdLoaded: adCompleter.complete,
                onAdClosed: (ad) {
                  ad.dispose();
                },
                onAdFailedToLoad: (ad, error) {
                  ad.dispose();
                  adCompleter.completeError(error);
                }),
            request: const AdRequest(),
            nativeTemplateStyle: NativeTemplateStyle(
                // Required: Choose a template.
                templateType: TemplateType.medium,
                // Optional: Customize the ad's style.
                mainBackgroundColor: Colors.purple,
                cornerRadius: 10.0,
                callToActionTextStyle: NativeTemplateTextStyle(
                    textColor: Colors.cyan,
                    backgroundColor: Colors.red,
                    style: NativeTemplateFontStyle.monospace,
                    size: 16.0),
                primaryTextStyle: NativeTemplateTextStyle(
                    textColor: Colors.red,
                    backgroundColor: Colors.cyan,
                    style: NativeTemplateFontStyle.italic,
                    size: 16.0),
                secondaryTextStyle: NativeTemplateTextStyle(
                    textColor: Colors.green,
                    backgroundColor: Colors.black,
                    style: NativeTemplateFontStyle.bold,
                    size: 16.0),
                tertiaryTextStyle: NativeTemplateTextStyle(
                    textColor: Colors.brown,
                    backgroundColor: Colors.amber,
                    style: NativeTemplateFontStyle.normal,
                    size: 16.0)))
        .load();
    final nativeAd = await adCompleter.future;
    return nativeAd as NativeAd?;
  }
}

class AdModConstant {
  static String get getBannerAdMobId => _initAdModId(
        kDebugAndroidId: 'ca-app-pub-3940256099942544/6300978111',
        kDebugIosId: 'ca-app-pub-3940256099942544/2934735716',
        kReleaseAndroidId: '',
        kReleaseIosId: '',
      );

  static String get getNativeAdMobId => _initAdModId(
        kDebugAndroidId: 'ca-app-pub-3940256099942544/2247696110',
        kDebugIosId: 'ca-app-pub-3940256099942544/3986624511',
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
