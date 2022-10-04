import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:retron/models/user.dart';
import 'package:retron/shared/constant.dart';
import 'package:retron/widgets/bottomsheet.dart';
import 'package:type_text/type_text.dart';

class HomeWidget extends StatelessWidget {
  final User homecard;
  const HomeWidget({Key? key, required this.homecard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(gradient: homegradient),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(60, 40, 60, 10),
          child: Column(
            children: [
              const Text(
                'Wallet Balance',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Mabry-Pro',
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TypeText(
                NumberFormat.simpleCurrency(locale: 'en-US', decimalDigits: 2)
                    .format(homecard.walletBalance),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Mabry-Pro',
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),
                duration: const Duration(seconds: 1),
              ),

              ///
              const SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 87,

                        //
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
                                onPressed: () {
                                bottomsheet1(context);
                                },
                                icon: Image.asset('assets/images/send.png'),
                                iconSize: 60.0,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text(
                              'Send',
                              style: TextStyle(
                                color: background,
                                fontFamily: 'Mabry-Pro',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),

                        //
                      ),
                      const SizedBox(
                        width: 30,
                      ),

                      //
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
                                bottomsheet2(context);
                              },
                              icon: Image.asset('assets/images/receive.png'),
                              iconSize: 60.0,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'Receive',
                            style: TextStyle(
                              color: background,
                              fontFamily: 'Mabry-Pro',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),

                      //
                      const SizedBox(
                        width: 30,
                      ),

                      //
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
                                bottomsheet3(context);
                              },
                              icon: Image.asset(
                                'assets/images/trade.png',
                              ),
                              iconSize: 60.0,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'Trade',
                            style: TextStyle(
                              color: background,
                              fontFamily: 'Mabry-Pro',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
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
    );
  }
}
