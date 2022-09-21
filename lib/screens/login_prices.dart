import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:retron/models/coinModel.dart';

import 'package:flutter/material.dart';
import 'package:retron/screens/home.dart';

import 'package:retron/shared/constant.dart';
import 'package:retron/widgets/coinCard.dart';

class Loginprices extends StatefulWidget {
  const Loginprices({Key? key}) : super(key: key);

  @override
  State<Loginprices> createState() => _LoginpricesState();
}

class _LoginpricesState extends State<Loginprices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: background,
            title: const Text(
              'Prices',
              style: TextStyle(
                fontFamily: 'Mabry-Pro',
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
            centerTitle: true,
            elevation: 0.0,
          ),
        ),
        body: CoinCard(),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: textColor100,
          foregroundColor: Colors.black,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => const Home())));
          },
          label: Text(
            'Wallet',
            style: TextStyle(
              fontFamily: 'Mabry-Pro',
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          icon: Image.asset(
            'assets/images/wallet.png',
            cacheHeight: 23,
            cacheWidth: 23,
            color: background,
            alignment: Alignment.center,
          ),
        ));
  }
}
