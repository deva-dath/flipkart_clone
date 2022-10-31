import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderTablet extends StatefulWidget {
  const SliderTablet({Key? key}) : super(key: key);

  @override
  State<SliderTablet> createState() => _sliderTabletState();
}

class _sliderTabletState extends State<SliderTablet> {
  CarouselController buttonCarouselController = CarouselController();
  List<String> images = [
    // "https://img.paisawapas.com/ovz3vew9pw/2020/10/21103408/power-bank-1.jpeg",
    "https://cdn.zoutons.com/images/originals/blog/offerbanner2234_1656329162.png",
    "https://i0.wp.com/www.smartprix.com/bytes/wp-content/uploads/2021/09/image-14.png?ssl=1",
    // "https://img.paisawapas.com/ovz3vew9pw/2020/10/21103408/power-bank-1.jpeg",
    "https://cdn.zoutons.com/images/originals/blog/offerbanner2234_1656329162.png",
    "https://i0.wp.com/www.smartprix.com/bytes/wp-content/uploads/2021/09/image-14.png?ssl=1",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(0),
      child: CarouselSlider.builder(
        itemCount: images.length,
        options: CarouselOptions(
          enlargeCenterPage: false,
          height: 300,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          reverse: false,
          aspectRatio: 0.25,
        ),
        itemBuilder: (context, i, id) {
          return GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.white,
                  )),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  images[i],
                  width: 1000,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            onTap: () {
              var url = images[i];
            },
          );
        },
      ),
    );
  }
}
