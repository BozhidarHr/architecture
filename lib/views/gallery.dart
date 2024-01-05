import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  // Replace this list with your own architectural images
  final List<String> images = [
    'assets/buildings.png',
    'assets/traditional_houses.png',
    'assets/scraper.png',
    'assets/buildings.png',
    'assets/traditional_houses.png',
    'assets/scraper.png',
    'assets/buildings.png',
    'assets/traditional_houses.png',
    'assets/scraper.png',
    'assets/buildings.png',
    'assets/traditional_houses.png',
    'assets/scraper.png',
    'assets/buildings.png',
    'assets/traditional_houses.png',
    'assets/scraper.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 50,
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: 500.0,
            aspectRatio: 16 / 9,
            autoPlay: true,
            enlargeCenterPage: true,
          ),
          items: images.map((image) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Image.asset(image, fit: BoxFit.cover),
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 50.0),
        Container(
          height: 6000,
          child: GridView.count(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: false,
            crossAxisCount: 3,
            // Number of columns
            crossAxisSpacing: 12.0,
            // Spacing between columns
            mainAxisSpacing: 12.0,
            // Spacing between rows
            children: List.generate(images.length, (index) {
              return GestureDetector(
                onTap: () {
                  // Implement your image detail view or action here
                },
                child: Card(
                  elevation: 4.0,
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}
