import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/commonContainer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container5 extends StatefulWidget {
  const Container5({super.key});

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer5(),
      desktop: desktopContainer5(),
    );
  }

  Widget mobileContainer5() {
    return commonContainerMobile(
      'Always Online',
      'Real-time\nsupport\nwith cloud',
      'lorem epsum we are avaible to you all the time',
      'assets/images/Illustrator3.png',
    );
  }

  Widget desktopContainer5() {
    return commonContainer(
      'Always Online',
      'Real-time\nsupport\nwith cloud',
      'lorem epsum we are avaible to you all the time',
      'assets/images/Illustrator3.png',
      false,
    );
  }
}
