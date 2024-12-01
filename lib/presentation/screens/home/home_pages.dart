import 'package:cine_world/presentation/screens/home/page_preview.dart';
import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: pageController,
      children: const [
        PagePreview(path: '/danh-sach/phim-moi-cap-nhat'),
        PagePreview(path: '/v1/api/danh-sach/tv-shows'),
        PagePreview(path: '/v1/api/danh-sach/phim-le'),
        PagePreview(path: '/v1/api/danh-sach/phim-bo'),
        PagePreview(path: '/v1/api/danh-sach/hoat-hinh'),

      ],
    ));
  }
}
