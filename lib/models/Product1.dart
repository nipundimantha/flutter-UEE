import 'package:flutter/material.dart';

class Product1 {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product1({
    @required this.id,
    @required this.images,
    @required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
    @required this.price,
    @required this.description,
  });
}

// Our demo Products

List<Product1> demo1Products = [
  Product1(
    id: 1,
    images: [
      "assets/images/document.png",
      
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Money will be taken",
    price: 0001,
    description: description,
    rating: 4.8,
    isFavourite: false,
    isPopular: true,
  ),
  Product1(
    id: 2,
    images: [
      "assets/images/folder.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Layout situation",
    price: 0002,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  
  
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
