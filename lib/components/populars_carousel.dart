import 'package:carousel_slider/carousel_slider.dart';
import 'package:design_first_1/components/populars_card.dart';
import 'package:flutter/material.dart';

class PopularsCarousel extends StatelessWidget {
  final List<String> images = [
    'assets/images/banners/glasses.jpg',
    'assets/images/banners/utensils.jpg',
    'assets/images/banners/paper_prods.jpg',
    'assets/images/banners/straws.jpg',
    'assets/images/banners/boxes.jpg',
  ];

  PopularsCarousel({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 0.82,
            aspectRatio: 2,
            autoPlay: true,
            enlargeCenterPage: true,
          ),
          items: [
            PopularsCard(
              imageUrl: images[0],
            ),
            PopularsCard(
              imageUrl: images[1],
            ),
            PopularsCard(
              imageUrl: images[2],
            ),
          ]),
    );
  }
}
