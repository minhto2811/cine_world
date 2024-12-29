import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';

class PrecacheImageUseCase {
  void call(List<String> urls) {
    compute(_precacheImage, urls);
  }

  Future<void> _precacheImage(List<String> urls) async {
    try {
      for (final url in urls) {
        CachedNetworkImage(imageUrl: url);
      }
    } catch (e) {
      //
    }
  }
}
