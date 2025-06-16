import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer3(),
      desktop: desktopContainer3(),
    );
  }

  Widget mobileContainer3() {
    return Container();
  }

  Widget desktopContainer3() {
    return Container();
  }
}
