import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:retron/models/assetModel.dart';
import 'package:retron/screens/home.dart';
import 'package:retron/screens/receive.dart';
import 'package:retron/screens/send.dart';
import 'package:retron/shared/constant.dart';
import 'package:retron/widgets/bottomsheet.dart';

class Crypto extends StatelessWidget {
  final Asset coins;
  const Crypto({Key? key, required this.coins}) : super(key: key);

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
                  Navigator.pop(context,
                      MaterialPageRoute(builder: ((context) => const Home())));
                }),
                icon: const ImageIcon(AssetImage('assets/images/Return.png')));
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'AVAILABLE BALANCE',
                            style: TextStyle(
                                color: textColor80,
                                fontFamily: 'Mabry-Pro',
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Row(
                            children: [
                              Text(
                                coins.amount.toString(),
                                style: const TextStyle(
                                    color: textColor100,
                                    fontFamily: 'Mabry-Pro',
                                    fontSize: 32,
                                    fontWeight: FontWeight.w900),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                coins.symbol,
                                style: const TextStyle(
                                    color: textColor80,
                                    fontFamily: 'Mabry-Pro',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            NumberFormat.simpleCurrency(
                              locale: 'en-US',
                              decimalDigits: 2,
                            ).format(
                              coins.amount,
                            ),
                            style: const TextStyle(
                                color: textColor80,
                                fontSize: 13,
                                fontFamily: 'Mabry-Pro',
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        height: 38,
                        width: 38,
                        child: Image.asset(coins.imageUrl)),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) =>
                                SendCard(list: coins, coins: coins))));
                      },
                      child: Container(
                        height: 77,
                        width: 103,
                        decoration: BoxDecoration(
                            color: background,
                            border: Border.all(width: 1, color: stroke),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/sendicon.png',
                              height: 26,
                              width: 26,
                            ),
                            const Text(
                              'Send',
                              style: TextStyle(
                                  fontFamily: 'Mabry-Pro',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: textColor100),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => Receive(
                                  coins: coins,
                                  receivelist: coins,
                                ))));
                      },
                      child: Container(
                        height: 77,
                        width: 103,
                        decoration: BoxDecoration(
                            color: background,
                            border: Border.all(width: 1, color: stroke),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/receive_icon.png',
                              height: 26,
                              width: 26,
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(
                              'Receive',
                              style: TextStyle(
                                  fontFamily: 'Mabry-Pro',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: textColor100),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        bottomsheet3(context);
                      },
                      child: Container(
                        height: 77,
                        width: 103,
                        decoration: BoxDecoration(
                            color: background,
                            border: Border.all(width: 1, color: stroke),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/tradeicon.png',
                              height: 26,
                              width: 26,
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(
                              'Trade',
                              style: TextStyle(
                                  fontFamily: 'Mabry-Pro',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: textColor100),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Recent Transactions',
                  style: TextStyle(
                    fontFamily: 'Mabry-Pro',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: textColor100,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/transactions.png',
                          height: 100,
                          width: 100,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'No transactions yet',
                          style: TextStyle(
                            fontFamily: 'Mabry-Pro',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: textColor100,
                          ),
                        ),
                      ],
                    ),
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

