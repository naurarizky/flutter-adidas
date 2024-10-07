import 'package:e_commerce/consts.dart';
import 'package:e_commerce/models/products.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.product, required this.press});

  final Product product;
  final VoidCallback press;

  //mvvm adalah model view view model
  //model itu detail data
  //item itu untuk mendefinikasi bagaimana sebuat object akan terjadi
  //menjadikan semua object reusable

  @override
  Widget build(BuildContext context) {
    return GestureDetector( //buat ngedektesi jari
      onTap: press, //mendorong/kalo di tap lama bakal keluar pilihan 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // Mengisi lebar maksimal
        children: [
          Expanded( //buat mengisi kekosongan yg ada, biar isinya proposional
            child: Container(
              padding: const EdgeInsets.all(defaultPadding), //edgeinsets untuk padding/margin
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Stack(
                children: [
                  Hero( //buat memungkinkan transisi animasi yg halus antar halaman pada widget yg sama
                    tag: "${product.id}", //untuk manggil id dari class product
                    child: Image.asset(product.image),
                  ),
                  Positioned(
                    right: 8,
                    top: 8,
                    child: IconButton(
                      iconSize: 24,
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        // Handle ketika button di-klik
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0), // Padding di kiri dan kanan
            child: Text(
              product.title,
              style: const TextStyle(
                color: textColor,
                fontSize: 16,
              ),
              textAlign: TextAlign.start, // Rata kiri
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Rp ${product.price}",
              style: const TextStyle(
                color: textColor,
                fontSize: 14,
              ),
              textAlign: TextAlign.start, // Rata kiri
            ),
          ),
        ],
      ),
    );
  }
}
