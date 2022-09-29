import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';


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
              fontSize: 24,
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
              child: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          decoration: const BoxDecoration(
                            color: background,
                            gradient: storyGradient,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Container(
                              decoration: const BoxDecoration(
                                color: background,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(36, 35, 36, 25),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 130,
                                      width: 130,
                                      child: Image.asset(
                                          'assets/images/announce.png'),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                          style: const TextStyle(
                                              fontFamily: 'Mabry-Pro',
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                              color: textColor100),
                                          children: [
                                            const TextSpan(
                                                text: 'You have earned'),
                                            const WidgetSpan(
                                                child: SizedBox(
                                              width: 5,
                                            )),
                                            TextSpan(
                                                text:
                                                    NumberFormat.simpleCurrency(
                                                            locale: 'en_US',
                                                            decimalDigits: 2)
                                                        .format(10)),
                                            const WidgetSpan(
                                                child: SizedBox(
                                              width: 5,
                                            )),
                                            const TextSpan(
                                                text: 'worth of Queel for signing up'),
                                          ]),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    const Text(
                                      '''These funds will be locked in your reward wallet for future use on Retron. In the meantime, earn even more by reffering friends.''',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Mabry-Pro',
                                          color: textColor60,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const SizedBox(
                                      height: 45,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                         Navigator.push(
                                         context,
                                         MaterialPageRoute(
                                         builder: ((context) => const NavBar())));
                                      },
                                      child: Container(
                                        height: 62,
                                        width: 62,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            gradient: storyGradient),
                                        child: const Image(
                                            height: 14,
                                            width: 14,
                                            image: AssetImage(
                                                'assets/images/button.png')),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      });
                },
                child: const Text(
                  'Go to Wallet',
                  style: TextStyle(
                      fontFamily: 'Mabry-Pro',
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      color: background),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
