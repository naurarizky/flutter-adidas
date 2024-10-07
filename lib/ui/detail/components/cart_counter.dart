import 'package:e_commerce/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      //<> = generic mendefinikasikan column/row/flex
      children: <Widget>[
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(30, 30),
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),
          onPressed: () {
            setState(() {
              if(numOfItems > 1) { //kalo lebih dr 1 maka dia akan jalan increment
                setState(() {
                  numOfItems--;
                });
              }
            });
          },
          child: const Icon(Icons.remove)
          ),
        const SizedBox(width: defaultPadding),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(
              numOfItems.toString().padLeft(2, "0"),
              style: const TextStyle(
                fontSize: 18,
                color: textColor
              ),
            ),
            ),
           const SizedBox(width: defaultPadding),
          const SizedBox(width: defaultPadding,),
        OutlinedButton(
          onPressed: () {
            setState(() { // perubahan state
              numOfItems++; // tambah 1
            });
          },
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(30, 30),
            padding: EdgeInsets.zero, // kepake kalau misal kita udah ad widgetnya 
            shape: RoundedRectangleBorder( // sama kayak kita bikin border radius di website
              borderRadius: BorderRadius.circular(10) 
            )
          ),
          child: const Icon(Icons.add)
        ),
      ],
    );
  }
}