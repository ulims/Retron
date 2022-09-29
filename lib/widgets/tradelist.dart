import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:retron/models/assetModel.dart';
import 'package:retron/shared/constant.dart';
import 'package:retron/widgets/bottomsheet.dart';

class Tradelist extends StatelessWidget {
  final Asset tradelist;
  const Tradelist({Key? key, required this.tradelist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
              bottomsheet5(context);
              },
              child: Container(
                height: 75,
                decoration: const BoxDecoration(
                  color: background,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Image.asset(
                        tradelist.imageUrl,
                        height: 38,
                        width: 38,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tradelist.name,
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
                              tradelist.symbol,
                              style: const TextStyle(
                                  color: textColor100,
                                  fontSize: 13,
                                  fontFamily: 'Mabry-Pro',
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
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
                          ).format(tradelist.price),
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
                            tradelist.amount,
                          ),
                          style: const TextStyle(
                              // color: assetlist[index].amount < 0 ? error : success,
                              fontSize: 13,
                              fontFamily: 'Mabry-Pro',
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
