import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class Swiper extends StatelessWidget {
  // const Swiper({super.key});

  final List<String> imagePaths = [
    'assets/no-image.jpg',
    'assets/no-image.jpg',
    'assets/no-image.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height * 0.5,
      child: CardSwiper(
        cardsCount: imagePaths.length,
        padding: EdgeInsetsGeometry.all(45),
        cardBuilder: (_, index, percentThresholdX, percentThresholdY) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(imagePaths[index], fit: BoxFit.cover),
          );
        },
      ),
    );
  }
}
