
import 'package:e_commerce/consts.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key, required this.text, required this.image,
  });
  final String text, image;
  //dari splash screen masuk ke body

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      //  const Spacer(),
        Text(
          "Adidas",
          style: TextStyle(
            color: primaryColor,
            fontSize: getProportionateScreenWidth(36.0)
          ),
          ),
         Text(
          text,
          textAlign: TextAlign.center,
          ),
         Image.asset(image)
      ],
    );
  }
}