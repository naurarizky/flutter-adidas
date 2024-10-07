import 'package:e_commerce/consts.dart';
import 'package:e_commerce/models/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
              Row(
                children: [
                  ColorPicker(
                    color: Color(0xFF3D82AE), 
                    isSelected: true,
                    ),
                     ColorPicker(
                    color: Color(0xFFF8C078), 
                    isSelected: false,
                    ),
                     ColorPicker(
                    color: Color(0xFF989493), 
                    isSelected: false,
                    )
                ],
              )
            ],
          ),
        ),
        Expanded(
          //Other way to showing and modifying the text
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "size",
                style: TextStyle(color: textColor),
              ),
              RichText(
                //ngasih sesuatu yg lebih untuk pemanggilan text
                text: TextSpan(
                  style:const TextStyle(color: textColor),
                  children: [
                    TextSpan(
                      text: "${product.size} CM",
                      style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold)
                    ),
                  ],
                ),
                ),
            ],
          )
        )
          //text adalah superclass klo textspan adalah subclass dari superclass richtext
      ],
    );
  }
}

class ColorPicker extends StatelessWidget {
  const ColorPicker({super.key, required this.color, required this.isSelected});

    final Color color;
    final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
      //symetric biar marginnya setara(hanya mendefinisikan 2 sebagai horizontal dan vertical)
      //only biar nilai nya setara
      //all biar terimplementasikam ke semuanya
        top: defaultPadding,
        right: defaultPadding
      ),
      padding: const  EdgeInsets.all(2.5),
      width: 20,
      height: 20,
      //modifikasi untuk border dari colorpickernya
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ?  color : Colors.transparent
        )
        ),

      child: DecoratedBox(//karna box decoration gabisa manggil widget jadinya make decoratedbox.
      //modifikasi untuk color pickernya
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle
         )
        ),
    );
  }
}