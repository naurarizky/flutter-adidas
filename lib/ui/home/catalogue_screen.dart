import 'package:e_commerce/consts.dart';
import 'package:e_commerce/models/products.dart';
import 'package:e_commerce/ui/detail/detail_screen.dart';
import 'package:e_commerce/ui/home/components/categories.dart';
import 'package:e_commerce/ui/home/components/item_card.dart';
import 'package:flutter/material.dart';

class CatalogueScreen extends StatelessWidget {
  const CatalogueScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0, //untuk menghilangkan efek bayangan/memperjelas
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.search)
          ),
            IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.shopping_cart_outlined)
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, //berlawanan sama default/biar bentuknya row
        children: [
         const Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(
              "Woman",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),
              ),
          ),
         const Categories(), //buat nampilin viewpager
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: GridView.builder(
                //gridview untuk menampilkan list dalam berbentuk column dan list, jadi dia ada columnya dan ada listnya/kotak kotak
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                   //griddelegate untuk mengatur tata letak grid
                  //slivergrid adalah pembungkus widget biasa biar bisa di tempatin dalam custom scrollview (lebih banyak opsi dari pada sliver)
                  crossAxisCount: 2,
                  mainAxisSpacing: defaultPadding,
                  crossAxisSpacing: defaultPadding,
                  childAspectRatio: 0.75 //0.75 yg fix
                  //perbandingan tinggi dan lebar tiap item 
                  ) ,
                  itemCount: products.length,
                  //itemcount untuk menampilkan sesuai data yg ada di model product
                  itemBuilder: (context, index) => ItemCard(
                     //itembuilder untuk jembatan/adapter untuk itemcard
                    product: products[index], 
                    //product nya di mulai dari index
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(product: products[index]),
                        )
                        //kalo di pencet kita bakal pindah ke detail screen
                    )
                    ),
                ),
            )
            )
        ],
      ),
    );
  }
}