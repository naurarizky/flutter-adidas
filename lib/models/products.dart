import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    //this adalah, untuk menandakan bahwa object terkait hanya bisa di akeses oleh class terkait
    //atau class yg sebelumnya memanggil class product
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "JI1883",
      price: 1200,
      size: 12,
      description: descriptiontext,
      image: "assets/images/adidas_hijau.png",
      color: const Color.fromARGB(255, 91, 91, 91),
  ),
  Product(
      id: 2,
      title: "Hitam JI1882",
      price: 2100,
      size: 8,
      description: descriptiontext,
      image: "assets/images/adidas_hitam.png",
      color: const Color.fromARGB(255, 62, 62, 62),
  ),
  Product(
      id: 3,
      title: "Hitam IH1321",
      price: 1300,
      size: 10,
      description: descriptiontext,
      image: "assets/images/adidas_putihhitam.png",
      color:  const Color.fromARGB(255, 62, 62, 62),
  ),
  Product(
      id: 4,
      title: "Putih HQ5841",
      price: 1500,
      size: 11,
      description: descriptiontext,
      image: "assets/images/adidas_logohitam.png",
      color: const Color.fromARGB(255, 91, 91, 91),
  ),
  Product(
      id: 5,
      title: "Putih GZ6352",
      price: 2300,
      size: 12,
      description: descriptiontext,
      image: "assets/images/adidas_logopink.png",
      color: const Color.fromARGB(255, 91, 91, 91),
  ),
  Product(
    id: 6,
    title: "Putih GV8849",
    price: 3200,
    size: 12,
    description: descriptiontext,
    image: "assets/images/adidas_logohijau.png",
    color: const Color.fromARGB(255, 62, 62, 62),
  ),
];

String descriptiontext =
    "Lorem Ipsum dolor sit amet";