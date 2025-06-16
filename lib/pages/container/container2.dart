import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';
// import 'package:flutter_web/utils/constant.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer2(),
      desktop: desktopContainer2(),
    );
  }

  // ============= Mobile ==============

  Widget mobileContainer2() {
    return Container(
      // height: 900,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primaryColor),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 0, top: 20),
            child: Container(
              height: 195,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Images/Image.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companyLogo('assets/Images/image 1.png'),
                companyLogo('assets/Images/image 2.png'),
                companyLogo('assets/Images/image 3.png'),
                companyLogo('assets/Images/image 4.png'),
                companyLogo('assets/Images/image 5.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ============= Desktop ==============

  Widget desktopContainer2() {
    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primaryColor),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  right: -20,
                  top: -20,

                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/Images/Vector.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: -20,
                  bottom: -20,

                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/Images/Vector.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 43,
                  right: 43,
                  bottom: 0,
                  child: Container(
                    width: double.infinity,
                    height: 700,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/Images/Image.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 40),
            // decoration: BoxDecoration(color: Colors.white),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companyLogo('assets/Images/image 1.png'),
                companyLogo('assets/Images/image 2.png'),
                companyLogo('assets/Images/image 3.png'),
                companyLogo('assets/Images/image 4.png'),
                companyLogo('assets/Images/image 5.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget companyLogo(String image) {
    return Container(
      height: 30,
      width: 160,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain),
      ),
    );
  }
}
