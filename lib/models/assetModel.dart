import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
