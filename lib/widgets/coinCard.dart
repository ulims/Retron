import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:retron/models/coinModel.dart';
import 'package:retron/screens/prices_details.dart';
import 'package:retron/shared/constant.dart';

class CoinCard extends StatefulWidget {
  const CoinCard({Key? key}) : super(key: key);

  @override
  State<CoinCard> createState() => _CoinCardState();
}

class _CoinCardState extends State<CoinCard> {

  final GlobalKey _listkey = GlobalKey();

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
        they are controlled by the country’s central bank. 
        The decentralized nature allows it to operate on a 
        peer-to-peer network whereby users are able to send funds
         to each other without going through intermediaries.'''
        ),
    Coin(
        name: 'Tether',
        symbol: 'USDT',
        imageUrl: 'assets/images/tether logo.png',
        price: 100,
        changePercentage: 0.0006,
        about: 'Hello'
        ),
    Coin(
        name: 'Tron',
        symbol: 'BTC',
        imageUrl: 'assets/images/tron logo.png',
        price: 000,
        changePercentage: -0.63,
        about: 'hello'
        ),
    Coin(
        name: 'Queelcoin',
        symbol: 'QUL',
        imageUrl: 'assets/images/apecoin logo.png',
        price: 0.1,
        changePercentage: 0,
        about: 'hello'
        ),
    Coin(
        name: 'Ripple',
        symbol: 'XRP',
        imageUrl: 'assets/images/ripplr logo.png',
        price: 089,
        changePercentage: -0.3,
        about: 'hello222'
        ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(18, 5, 18, 0),
        child: ListView.builder(
          itemCount: coinlist.length,
           key: _listkey,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: ((
                  context) => PriceDetails(coin: coinlist[index],))));
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
                          ).format(coinlist[index].price),
                          //coinlist[index].price.toString(),
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
                          NumberFormat.decimalPercentPattern(
                            locale: 'en-US',
                            decimalDigits: 2,
                          ).format(
                            coinlist[index].changePercentage,
                          ),
                          style: TextStyle(
                              color: coinlist[index].changePercentage < 0
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
