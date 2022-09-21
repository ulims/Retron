import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:retron/models/assetModel.dart';
import 'package:retron/shared/constant.dart';

class AssetCard extends StatelessWidget {
  Asset coins;
  AssetCard({Key? key, required this.coins}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            Container(
              height: 75,
              decoration: const BoxDecoration(
                color: background,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Image.asset(
                      coins.imageUrl,
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
                            coins.name,
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
                            coins.symbol,
                            style: TextStyle(
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
                        ).format(coins.price),
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
                          locale: 'en-US',
                          decimalDigits: 2,
                        ).format(
                          coins.amount,
                        ),
                        style: TextStyle(
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
          ],
        ));
  }
}
