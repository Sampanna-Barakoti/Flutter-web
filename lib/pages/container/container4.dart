import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/commonContainer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container4 extends StatefulWidget {
  const Container4({super.key});

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer4(),
      desktop: desktopContainer4(),
    );
  }

  Widget mobileContainer4() {
    return commonContainerMobile(
      'Always Online',
      'Real-time\nsupport\nwith cloud',
      'lorem epsum we are avaible to you all the time',
      'assets/images/Illustrator2.png',
    );
  }

  Widget desktopContainer4() {
    return commonContainer(
      'Always Online',
      'Real-time\nsupport\nwith cloud',
      'lorem epsum we are avaible to you all the time',
      'assets/images/Illustrator2.png',
      true,
    );
  }
}
