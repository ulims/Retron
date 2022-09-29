import 'package:flutter/material.dart';

import 'package:retron/models/assetModel.dart';
import 'package:retron/screens/receive.dart';
import 'package:retron/shared/constant.dart';

class ReceiveList extends StatelessWidget {
  final Asset receivelist;
  const ReceiveList({Key? key, required this.receivelist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
      MaterialPageRoute(builder: ((
      context) => Receive(coins: receivelist, receivelist:receivelist))));
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
                        receivelist.imageUrl,
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
                              receivelist.name,
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
                              receivelist.symbol,
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
                          receivelist.price.toString(),
                          style: const TextStyle(
                              color: textColor100,
                              fontFamily: 'Mabry-Pro',
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
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