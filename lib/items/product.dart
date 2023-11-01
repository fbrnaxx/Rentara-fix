import 'package:flutter/material.dart';
class Product {
  final String image;
  final String productname;
  final String productType;
  final String province;
  final double price;
  Product({
    required this.image,
    required this.productname,
    required this.productType,
    required this.province,
    required this.price,
  });
}