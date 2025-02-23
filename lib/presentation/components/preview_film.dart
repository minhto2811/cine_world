import 'package:cached_network_image/cached_network_image.dart';
import 'package:cine_world/core/extensions/context.dart';
import 'package:cine_world/data/models/preview.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
class PreviewFilm extends StatelessWidget {
  const PreviewFilm({super.key, required this.model, required this.onTap});

  final Preview model;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final titleSmall =
        context.textTheme.titleSmall!.copyWith(color: Colors.white);
    final posterUrl = model.posterUrl.startsWith('https')
        ? model.posterUrl
        : 'https://phimimg.com/${model.posterUrl}';
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        elevation: 4,
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            children: [
              CachedNetworkImage(
                imageUrl: posterUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
                placeholder: (context, url) => Shimmer.fromColors(
                  baseColor: Colors.grey,
                  highlightColor: Colors.white,
                  child: Container(
                    color: Colors.grey,
                  )
                ),
                errorWidget:  (context, url, error) => Image.asset(
                    "assets/images/imgnf.png"
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0, top: 6.0),
                  child: Text(
                    model.year.toString(),
                    style: titleSmall,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        model.originName,
                        style: titleSmall,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
