import 'package:flutter/material.dart';

class Product2 {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product2({
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

List<Product2> demo2Products = [
  Product2(
    id: 1,
    images: [
      "assets/images/repair.png",
      
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Cars on process",
    price: 0001,
    description: description,
    rating: 4.8,
    isFavourite: false,
    isPopular: true,
  ),
  Product2(
    id: 2,
    images: [
      "assets/images/triangle.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Fleet cars",
    price: 0002,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  
  
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
