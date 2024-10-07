import 'package:e_commerce/models/products.dart';
import 'package:flutter/material.dart';

class FavButton extends StatelessWidget {
  const FavButton({super.key, required this.product});

    final Product product;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.favorite_border),
    );
  }
}