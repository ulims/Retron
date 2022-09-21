import 'package:flutter/material.dart';

class Asset{
  String imageUrl;
  String name;
  String symbol;
  double price;
  double amount;

  Asset({
    required this.name,
    required this.symbol,
    required this.imageUrl,
    required this.price,
    required this.amount,
  });
}
