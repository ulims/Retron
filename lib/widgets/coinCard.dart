import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:intl/intl.dart';
import 'package:retron/models/coinModel.dart';
import 'package:retron/shared/constant.dart';

class CoinCard extends StatefulWidget {
  const CoinCard({Key? key}) : super(key: key);

  @override
  State<CoinCard> createState() => _CoinCardState();
}

class _CoinCardState extends State<CoinCard> {
  List<Coin> coinlist = <Coin>[
    Coin(
        name: 'Bitcoin',
        symbol: 'BTC',
        imageUrl: 'assets/images/bitcoin logo.png',
        price: 2000,
        changePercentage: -0.63),
    Coin(
        name: 'Tether',
        symbol: 'USDT',
        imageUrl: 'assets/images/tether logo.png',
        price: 100,
        changePercentage: 0.63),
    Coin(
        name: 'Tron',
        symbol: 'BTC',
        imageUrl: 'assets/images/tron logo.png',
        price: 000,
        changePercentage: -0.63),
    Coin(
        name: 'Apecoin',
        symbol: 'APE',
        imageUrl: 'assets/images/apecoin logo.png',
        price: 1400,
        changePercentage: -0.63),
    Coin(
        name: 'Ripple',
        symbol: 'XRP',
        imageUrl: 'assets/images/ripplr logo.png',
        price: 089,
        changePercentage: -0.63),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(18, 10, 18, 0),
        child: ListView.builder(
          itemCount: coinlist.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              height: 75,
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
                          style: TextStyle(
                              color: textColor100,
                              fontFamily: 'Mabry-Pro',
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          coinlist[index].symbol,
                          style: TextStyle(
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
                          locale: 'en-us', decimalDigits: 2,).format(
                            coinlist[index].price),
                        //coinlist[index].price.toString(),
                        style: TextStyle(
                            color: textColor100,
                            fontFamily: 'Mabry-Pro',
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        NumberFormat.decimalPercentPattern( 
                          locale: 'en-US', decimalDigits: 2,).format(
                        coinlist[index].changePercentage, ),
                        
                        style: TextStyle(
                            color: coinlist[index].changePercentage < 0 ? error : success,
                            fontSize: 13,
                            fontFamily: 'Mabry-Pro',
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        )
        );
  }
}
