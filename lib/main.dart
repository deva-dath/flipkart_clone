import 'package:flipkart/categoriesMobile.dart';
import 'package:flipkart/desktopCategories.dart';
import 'package:flipkart/local_nots.dart';
import 'package:flipkart/mobileAppbar.dart';
import 'package:flipkart/responsive.dart';
import 'package:flipkart/tabletAppbar.dart';
import 'package:flipkart/tabletCategories.dart';
import 'package:flipkart/tilesDesktop.dart';
import 'package:flipkart/tilesMobile.dart';
import 'package:flipkart/tilesTablet.dart';
import 'package:flipkart/widget/offer.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'desktopcarousel.dart';
import 'carouselMobile.dart';
import 'tabletCarousel.dart';

import 'categories.dart';
import 'desktopAppbar.dart';
import 'local_nots.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(primaryColor: Colors.white),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NotificationsIOS.initializ();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: Responsive.isDesktop(context)
              ? AppBarDesktop()
              : Responsive.isTablet(context)
                  ? AppBarTablet()
                  : AppBarMobile(),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: Responsive.isDesktop(context)
                          ? [
                              CategoriesDesktop(),
                              ElevatedButton(
                                  onPressed: () {
                                    NotificationsIOS.showNotification(
                                      title: "notifications",
                                      body: 'this is test notifications',
                                    );
                                  },
                                  child: Text('View all')),
                              SliderDesktop(),
                              OfferWidget(),
                              TilesDesktop(),
                            ]
                          : Responsive.isTablet(context)
                              ? [
                                  CategoriesTablet(),
                                  ElevatedButton(
                                      onPressed: () {
                                        NotificationsIOS.showNotification(
                                          title: "notifications",
                                          body: 'this is test notifications',
                                        );
                                      },
                                      child: Text('View all')),
                                  SliderTablet(),
                                  OfferWidget(),
                                  TilesTablet()
                                ]
                              : [
                                  CategoriesMobile(),
                                  ElevatedButton(
                                      onPressed: () {
                                        NotificationsIOS.showNotification(
                                          title: "Flipkart",
                                          body: ' test notifications For Flipkart',
                                        );
                                      },
                                      child: Text('View all')),
                                  SliderMobile(),
                                  OfferWidget(),
                                  TilesMobile()
                                ]),
                ),
              ],
            ),
          )),
    );
  }
}
