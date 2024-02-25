// import 'package:carousel_slider/carousel_slider.dart';
import 'package:design_first_1/components/filters_tab.dart';
import 'package:design_first_1/components/populars_carousel.dart';
import 'package:design_first_1/components/products_card.dart';
// import 'package:design_first_1/components/sales_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<List<String>> cardInfo = [
    ['Jute Bag', '24.99', 'Blue Make', 'assets/images/products/bag.png'],
    ['Stl Bottle', '43.99', 'Just Btl', 'assets/images/products/bottle.png'],
    ['Cer. Cup', '23.99', 'Gifty', 'assets/images/products/gift.png'],
    ['Stl Bottle', '19.99', 'Just Bag', 'assets/images/products/bottle.png'],
    ['Stl Bottle', '21.99', 'Arctix', 'assets/images/products/bottle.png'],
    ['Cer. Cup', '22.99', 'Shopify', 'assets/images/products/gift.png'],
    ['Cer. Cup', '25.99', 'MarkSNS', 'assets/images/products/gift.png'],
    ['Jute Bag', '26.99', 'Blue Make', 'assets/images/products/bag.png'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const FiltersTab(),
            PopularsCarousel(),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: cardInfo.length,
                itemBuilder: (_, index) => ProductsCard(
                  name: cardInfo[index][0],
                  price: cardInfo[index][1],
                  company: cardInfo[index][2],
                  image: cardInfo[index][3],
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  mainAxisExtent: 246,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
