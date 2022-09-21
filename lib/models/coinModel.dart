import 'package:flutter/material.dart';

class Coin {
  String imageUrl;
  String name;
  String symbol;
  double price;
  double changePercentage;

  Coin({
    required this.name, 
    required this.symbol, 
    required this.imageUrl, 
    required this.price,
    required this.changePercentage
    });

    
}

