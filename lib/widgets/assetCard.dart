import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:retron/models/assetModel.dart';
import 'package:retron/screens/crypto.dart';

import 'package:retron/shared/constant.dart';

class AssetCard extends StatelessWidget {
  final Asset coins;
  const AssetCard({Key? key, required this.coins}) : super(key: key);

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
      context) => Crypto(coins: coins,))));
      },
        child: Container(
        height: 75,
        decoration: const BoxDecoration(
        color: background,),
        child: Row(
        children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: Image.asset(
          coins.imageUrl,
          height: 38,
          width: 38,),
          ),
          Expanded(
          child: Container(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
          coins.name,
          style: const TextStyle(
          color: textColor100,
          fontFamily: 'Mabry-Pro',
          fontSize: 16,
          fontWeight: FontWeight.w500),
          ),
          const SizedBox( height: 5,),
          Text(
          coins.symbol,
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
          coins.price.toString(),
          style: const TextStyle(
          color: textColor100,
          fontFamily: 'Mabry-Pro',
          fontSize: 16,
          fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 5,),
          Text(
          NumberFormat.simpleCurrency(
          locale: 'en-US',
          decimalDigits: 2,).format(coins.amount,),
          style: const TextStyle(
          color:textColor80,
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
          )
        );
  }
}
