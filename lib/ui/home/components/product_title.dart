import 'package:e_commerce/consts.dart';
import 'package:e_commerce/models/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    //definisikan ukuran proposional gambar sebagai variable const
    const double imageWidhRatio = 0.60; //35% dari lebar layar
    const double imageHeightRatio = 0.28;  //ngambil 20% dari tinggi layar
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the start
        children: [
          const Text(
            "ADIDAS ORIGINALS", // Static title
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title, // Dynamic product title
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: defaultPadding),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Price",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "${product.price}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Hero(
                tag: "${product.id}",
                child: Image.asset(
                  product.image,
                  width: size.width *imageWidhRatio, // gunakan ratio untuk lebar gambar
                  height: size.height *imageHeightRatio, // gunakan ratio untuk tinggi gambar
                  fit: BoxFit.contain, // Ensure proper scaling
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}