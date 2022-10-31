import 'package:flutter/material.dart';

class CategoriesDesktop extends StatefulWidget {
  const CategoriesDesktop({Key? key}) : super(key: key);

  @override
  State<CategoriesDesktop> createState() => _CategoriesDesktopState();
}

class _CategoriesDesktopState extends State<CategoriesDesktop> {
  List<String> categoriesImages = [
    'https://rukminim1.flixcart.com/flap/128/128/image/f15c02bfeb02d15d.png?q=100',
    'https://rukminim1.flixcart.com/flap/128/128/image/29327f40e9c4d26b.png?q=100',
    'https://rukminim1.flixcart.com/flap/128/128/image/22fddf3c7da4c4f4.png?q=100',
    'https://rukminim1.flixcart.com/flap/128/128/image/c12afc017e6f24cb.png?q=100',
    'https://rukminim1.flixcart.com/flap/128/128/image/69c6589653afdb9a.png?q=100',
    'https://rukminim1.flixcart.com/flap/128/128/image/ab7e2b022a4587dd.jpg?q=100',
    'https://rukminim1.flixcart.com/flap/128/128/image/0ff199d1bd27eb98.png?q=100',
    'https://rukminim1.flixcart.com/flap/128/128/image/71050627a56b4693.png?q=100',
    'https://rukminim1.flixcart.com/flap/128/128/image/dff3f7adcf3a90c6.png?q=100',
  ];
  List<String> items = [
    'Top Offers',
    'Grocerry',
    'Mobiles',
    'Fashion',
    'Electronics',
    'Home',
    'Appliances',
    'Travel',
    'Beauty, Toys and More'
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: SizedBox(
        height: 100,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 150, right: 150),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoriesImages.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(categoriesImages[index]),
                        minRadius: 30,
                        maxRadius: 30,
                      ),
                    ),
                    Text(
                      items[index],
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
