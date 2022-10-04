import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:retron/models/coinModel.dart';
import 'package:retron/models/coinprices.dart';
import 'package:retron/screens/prices_details.dart';
import 'package:retron/shared/constant.dart';
import 'package:http/http.dart' as http;
import 'package:retron/widgets/bottomsheet.dart';

class CoinCard extends StatefulWidget {
  const CoinCard({Key? key}) : super(key: key);

  @override
  State<CoinCard> createState() => _CoinCardState();
}

class _CoinCardState extends State<CoinCard> {
  List<CoinPrice>? coinPrices;
  List<Coin> coinlist = <Coin>[
    Coin(
        name: 'Bitcoin',
        symbol: 'BTC',
        imageUrl: 'assets/images/bitcoin logo.png',
        price: 2000,
        changePercentage: -0.63,
        about: '''Bitcoin is a cryptocurrency. It is a decentralized'''
            ''' digital currency that is based on cryptography. 
        As such, it can operate without the need of a 
        central authority like a central bank or a 
        company. It is unlike government-issued or fiat 
        currencies such  as US Dollars or Euro in which 
        they are controlled by the country central bank. 
        The decentralized nature allows it to operate on a 
        peer-to-peer network whereby users are able to send funds
         to each other without going through intermediaries.'''),
    Coin(
        name: 'Tether',
        symbol: 'USDT',
        imageUrl: 'assets/images/tether logo.png',
        price: 0,
        changePercentage: 0.000,
        about: 'Hello'),
    Coin(
        name: 'Tron',
        symbol: 'TRX',
        imageUrl: 'assets/images/tron logo.png',
        price: 000,
        changePercentage: -0.63,
        about: 'hello'),
    Coin(
        name: 'Polygon',
        symbol: 'MATIC',
        imageUrl: 'assets/images/polygon.png',
        price: 0.1,
        changePercentage: 0,
        about: 'hello'),
    Coin(
        name: 'Axie Infinity',
        symbol: 'AXS',
        imageUrl: 'assets/images/axie.png',
        price: 0,
        changePercentage: 0,
        about: 'hello222'),
  ];

  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() async {
  try{var url = Uri.parse(
  'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false');
  var response = await http.get(url);
  setState(() {
  coinPrices = coinPriceFromJson(response.body);
  });
  }catch(error){
  print('An api error has occured ${error}');
  }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(18, 5, 18, 0),
        child: ListView.builder(
          itemCount: coinlist.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final match = coinPrices?.where(
              (element) =>
                  element.name.toLowerCase() ==
                  coinlist[index].name.toLowerCase(),
            );
            final actualPrice =
                match?.isNotEmpty == true ? match!.first.currentPrice : 0;
            //print(actualPrice);
            final percentChange =
                match?.isNotEmpty == true ? match!.first.priceChange24H : 0;
            //print(percentChange);

            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => PriceDetails(
                          coin: coinlist[index],  coinPrice: coinPrices![index]
                        ))));
              },
              child: Container(
                height: 80,
                decoration: const BoxDecoration(
                  color: background,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Image.asset(
                        coinlist[index].imageUrl,
                        height: 38,
                        width: 38,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            coinlist[index].name,
                            style: const TextStyle(
                                color: textColor100,
                                fontFamily: 'Mabry-Pro',
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            coinlist[index].symbol,
                            style: const TextStyle(
                                color: textColor100,
                                fontSize: 13,
                                fontFamily: 'Mabry-Pro',
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          NumberFormat.simpleCurrency(
                            locale: 'en-us',
                            decimalDigits: 2,
                          ).format(actualPrice),
                          style: const TextStyle(
                              color: textColor100,
                              fontFamily: 'Mabry-Pro',
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                        percentChange.toDouble() < 0
                        ? percentChange.toDouble().toString() + '%'
                        : '+' + percentChange.toDouble().toString() + '%',
                          style: TextStyle(
                              color: percentChange.toDouble() < 0
                                  ? error
                                  : success,
                              fontSize: 13,
                              fontFamily: 'Mabry-Pro',
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
