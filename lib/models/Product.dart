import 'package:flutter/material.dart';

class Product{
  final String image,title;
  final int price;
  final Color bgColor;

  Product({required this.image,required this.title,required this.price,required this.bgColor});
}

List<Product>  demo_product = [
  Product(
      image: "assets/images/product_0.png",
      title: "Yarım Kollu Gömlekler",
      price: 99,
      bgColor: const Color(0xFFEEEEED),
  ),
  Product(
    image: "assets/images/product_1.png",
    title: "Basic Düz Tişört",
    price: 60,
    bgColor: const Color(0xFFEEEEED),
  ),
  Product(
    image: "assets/images/product_2.png",
    title: "Gömlekler",
    price: 120,
    bgColor: const Color(0xFFEEEEED),
  ),
  Product(
    image: "assets/images/product_3.png",
    title: "Oversize Tişört",
    price: 75,
    bgColor: const Color(0xFFEEEEED),
  ),
];