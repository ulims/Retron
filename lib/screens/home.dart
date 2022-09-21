import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:retron/models/assetModel.dart';
import 'package:retron/screens/send.dart';
import 'package:retron/shared/constant.dart';
import 'package:retron/widgets/assetCard.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Asset> assetlist = <Asset>[
    Asset(
      name: 'Bitcoin', 
      symbol: 'BTC', 
      imageUrl: 'assets/images/bitcoin logo.png', 
      price: 000, 
      amount: 0,),
      Asset(
      name: 'Tether', 
      symbol: 'USDT', 
      imageUrl: 'assets/images/tether logo.png', 
      price: 000, 
      amount: 0,),
      Asset(
      name: 'Tron', 
      symbol: 'TRX', 
      imageUrl: 'assets/images/tron logo.png', 
      price: 000, 
      amount: 0,),
      Asset(
      name: 'Apecoin', 
      symbol: 'APE', 
      imageUrl: 'assets/images/apecoin logo.png', 
      price: 000, 
      amount: 0,),
      Asset(
      name: 'Ripple', 
      symbol: 'XRP', 
      imageUrl: 'assets/images/ripplr logo.png', 
      price: 000, 
      amount: 0,),
  ];
  

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      //appBar: AppBar(backgroundColor: Colors.transparent,toolbarHeight: 0,elevation: 0,),
      body: Column(
        children: [
          Container(
            height: 310,
            width: double.infinity,
            decoration: BoxDecoration(gradient: homegradient),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.fromLTRB(60, 40, 60, 18),
                child: Column(
                  children: [
                    Text(
                      'Wallet Balance',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Mabry-Pro',
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      NumberFormat.simpleCurrency(
                              locale: 'en-US', decimalDigits: 2)
                          .format(000),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Mabry-Pro',
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 87,
                              child: Column(
                                children: [
                                  Container(                                     
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: background,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Image.asset('assets/images/send.png'),
                                      iconSize: 60.0,
                                    ),
                                  ),
                                  SizedBox(height: 6,),
                                  Text(
                                    'Send',
                                    style: TextStyle(
                                      color: background,
                                      fontFamily: 'Mabry-Pro',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                Container(
                                  
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: background,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                context, MaterialPageRoute(builder: ((context) => const Sendcard())));
                                    },
                                    icon: Image.asset('assets/images/receive.png'),
                                    iconSize: 60.0,
                                  ),
                                ),
                                SizedBox(height: 6,),
                                Text(
                                  'Receive',
                                  style: TextStyle(
                                    color: background,
                                    fontFamily: 'Mabry-Pro',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400
                                    ),
                                  ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                Container(
                                  
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: background,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Image.asset('assets/images/trade.png'),
                                    iconSize: 60.0,
                                  ),
                                ),
                                SizedBox(height: 6,),
                                Text(
                                  'Trade',
                                  style: TextStyle(
                                    color: background,
                                    fontFamily: 'Mabry-Pro',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          ///
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18,),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Assets',
                    style: TextStyle(
                      color: textColor100,
                      fontFamily: 'Mabry-Pro',
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      ),
                      
                    ),
                    
                  ],
                ),
               
              ],
            ),
            
          ),
          
       AssetCard()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(backgroundColor: background, 
      items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.amber,
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        ),
    );
  }
}
