import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';
import 'package:flutter_web/utils/constant.dart';

Widget commonContainer(String s1, s2, s3, image, bool leftImage) {
  return Container(
    height: 530,
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Row(
      children: [
        leftImage
            ? Expanded(
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            )
            : Container(),
        Expanded(
          child: Column(
            crossAxisAlignment:
                leftImage ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                s1.toUpperCase(),
                style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                s2,
                textAlign: leftImage ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                  height: 1.1,
                  color: Colors.black,
                  fontSize: w! / 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                textAlign: leftImage ? TextAlign.right : TextAlign.left,
                s3,
                style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
              ),
              SizedBox(height: 10),
              TextButton.icon(
                onPressed: () {},

                icon: Icon(
                  Icons.arrow_left,
                  size: 20,
                  color: AppColors.primaryColor,
                ),
                label: Text(
                  'Learn more',
                  style: TextStyle(color: AppColors.primaryColor),
                ),
              ),
            ],
          ),
        ),
        !leftImage
            ? Expanded(
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            )
            : Container(),
      ],
    ),
  );
}

Widget commonContainerMobile(String s1, s2, s3, image) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.contain,
            ),
          ),
        ),

        Column(
          children: [
            Text(
              s1.toUpperCase(),
              style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              s2,
              textAlign: TextAlign.center,

              style: TextStyle(
                color: Colors.black,
                fontSize: w! / 10,
                height: 1.1,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              s3,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
            ),
            SizedBox(height: 20),
            TextButton.icon(
              onPressed: () {},

              icon: Icon(
                Icons.arrow_left,
                size: 20,
                color: AppColors.primaryColor,
              ),
              label: Text(
                'Learn more',
                style: TextStyle(color: AppColors.primaryColor),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
