import 'package:flutter/material.dart';
import 'package:flutter_web/pages/container/container1.dart';
import 'package:flutter_web/pages/container/container2.dart';
import 'package:flutter_web/pages/container/container3.dart';
import 'package:flutter_web/pages/container/container4.dart';
import 'package:flutter_web/pages/container/container5.dart';
import 'package:flutter_web/utils/constant.dart';
import 'package:flutter_web/widgets/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Navbar(),
              Container1(),
              Container2(),
              Container3(),
              Container4(),
              Container5(),
            ],
          ),
        ),
      ),
    );
  }
}
