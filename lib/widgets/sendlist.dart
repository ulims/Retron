import 'package:flutter/material.dart';
import 'package:retron/models/assetModel.dart';
import 'package:retron/screens/send.dart';
import 'package:retron/shared/constant.dart';

class Sendlist extends StatelessWidget {
  final Asset list;
  const Sendlist({Key? key, required this.list}) : super(key: key);

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
      context) => SendCard(list: list, coins: list,))));
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
                        list.imageUrl,
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
                              list.name,
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
                              list.symbol,
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
                          list.price.toString(),
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

