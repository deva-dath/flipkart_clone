import 'package:flutter/material.dart';

class Responsive {
  static bool isMobile(context) {
    return MediaQuery.of(context).size.width < 650;
  }

  static bool isDesktop(context) {
    return MediaQuery.of(context).size.width >= 1200;
  }

  static bool isTablet(context) {
    return MediaQuery.of(context).size.width < 1200 &&
        MediaQuery.of(context).size.width >= 650;
  }
}
