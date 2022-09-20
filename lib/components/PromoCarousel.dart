import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PromoCarousel extends StatelessWidget {
  final List<String> imgList = [
    'assets/imageCarousel1.jpg',
    'assets/imageCarousel2.jpg',
    'assets/imageCarousel3.jpg',
    'assets/imageCarousel4.jpg',
    'assets/imageCarousel5.jpg',
    'assets/imageCarousel6.jpg',
  ];

  var index = 0;

  PromoCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: imgList.map((e) => Container(
            padding: EdgeInsets.only(right: 20),
            child: Image.asset(e))
          ).toList(),
          options: CarouselOptions(
              height: 200,
              autoPlay: true,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              autoPlayInterval: const Duration(seconds: 3)),
        ),
      ],
    );
  }
}
