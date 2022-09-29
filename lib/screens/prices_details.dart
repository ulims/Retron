import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:retron/models/coinModel.dart';
import 'package:retron/screens/login_prices.dart';

import 'package:retron/shared/constant.dart';

class PriceDetails extends StatelessWidget {
  final Coin coin;
  const PriceDetails({Key? key, required this.coin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        automaticallyImplyLeading: false,
        centerTitle: false,
        elevation: 0.0,
        leading: Builder(
          builder: (context) {
          return IconButton(
                iconSize: 16,
                onPressed: (() {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const Loginprices())));
                }),
                icon: const ImageIcon(AssetImage('assets/images/Return.png')));
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            coin.name,
                            style: const TextStyle(
                              color: textColor60,
                              fontFamily: 'Mabry-Pro',
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            NumberFormat.simpleCurrency(
                              locale: 'en_US',
                              decimalDigits: 2,
                            ).format(coin.price),
                            style: const TextStyle(
                              color: textColor100,
                              fontFamily: 'Mabry-Pro',
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            NumberFormat.decimalPercentPattern(
                              locale: 'en_US',
                              decimalDigits: 2,
                            ).format(coin.changePercentage),
                            style: TextStyle(
                              color: coin.changePercentage < 0 ? error : success,
                              fontFamily: 'Mabry-Pro',
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        height: 38, width: 38, child: Image.asset(coin.imageUrl))
                  ],
                ),
                const SizedBox(
                  height: 110,
                ),
                Column(
                  children: const[
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Image(image: AssetImage('assets/images/graph.png')),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Unable to display graph',
                      style: TextStyle(
                          fontFamily: 'Mabry-Pro',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: textColor60),
                    ),
                  ],
                ),
              const SizedBox(height: 85,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About ${coin.name}',
                      style: const TextStyle(
                          fontFamily: 'Mabry-Pro',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: textColor100),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      width: 335,
                    
                      decoration: BoxDecoration(border: Border.all(
                        width: 1,
                        color: stroke
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: contain
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        child: Text(
                          coin.about,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: textColor60,
                            height: 1.6,
                            fontFamily: 'Mabry-Pro',
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
