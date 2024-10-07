import 'package:e_commerce/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//categories utk viewpager
class Categories extends StatefulWidget {
  const Categories({super.key});
  //membuat state karna banyak perubahan 

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Shoes",
    "Clothing",
    "Sports",
    "Accessories"
  ];
  //nama nama category product
  int selectedIndex = 0;
  //var untuk memberitahu klo misalnya index di mulai dri 0

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal, //biar bisa di scroll secara horizontal
          itemCount: categories.length, //membatasi atau menentukan jumlah item yg ditampilkan
          itemBuilder: (context, index) => _buildCategory(index)//itembuilder untuk menampung/membangun data
         ),
      ),
      );
  }

  GestureDetector _buildCategory(int index) {
    return GestureDetector( //untuk menditek gestur tergantung sama device nya
        onTap: () {
          //perubahan pas di pencet'
          setState(() {//untuk menampilkan perubahan
            selectedIndex = index;
            //buat ngasih tau bahwa indexnya itu di mulai dari 0
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            children: [
              Text(
                categories[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedIndex == index ? primaryColor : secondaryColor
                  //salah satu category di klik bakal berubah warna ke primary tp klo ngga ke secondary
                ),
              ),
              Container(
                margin:const EdgeInsets.only(
                top: 3
              ),
              height: 2,
              width: 30,
              color: selectedIndex == index ? primaryColor : secondaryColor,
              )
            ],
          ),
        ),
      );
  }
}
