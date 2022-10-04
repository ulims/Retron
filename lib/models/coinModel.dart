import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Coin {
  String imageUrl;
  String name;
  String symbol;
  double price;
  double changePercentage;
  String about;

  Coin(
      {required this.name,
      required this.symbol,
      required this.imageUrl,
      required this.price,
      required this.changePercentage,
      required this.about
      
      });
}
