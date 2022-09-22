

import 'package:flutter/material.dart';

import 'package:retron/screens/home.dart';

import 'package:retron/shared/constant.dart';
import 'package:retron/widgets/coinCard.dart';
import 'package:retron/widgets/nav.dart';

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
          preferredSize: const Size.fromHeight(50),
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
        body: Column(
          children: [
              const CoinCard(),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: storyGradient,
                  ),
                  height: 55,
                  width: double.infinity,
                  child: TextButton(onPressed: (() {
                    Navigator.push(
                context, MaterialPageRoute(builder: ((context) => const NavBar())));
                  }), 
                  child: const Text(
                    'Go to Wallet',
                    style: TextStyle(
                      fontFamily: 'Mabry-Pro',
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      color: background
                    ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40,)
          ],
        ),
        );
  }
}
