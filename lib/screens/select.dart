import 'package:flutter/material.dart';
import 'package:retron/models/assetModel.dart';
import 'package:retron/shared/constant.dart';
import 'package:retron/widgets/tradelist.dart';

class Select extends StatefulWidget {
  const Select({Key? key}) : super(key: key);

  @override
  State<Select> createState() => _SelectState();
}

class _SelectState extends State<Select> {

  List<Asset> assetlist = <Asset>[
  Asset(
    name: 'Bitcoin',
    symbol: 'BTC',
    imageUrl: 'assets/images/bitcoin logo.png',
    price: 000,
    amount: 0,
  ),
  Asset(
    name: 'Tether',
    symbol: 'USDT',
    imageUrl: 'assets/images/tether logo.png',
    price: 000,
    amount: 0,
  ),
  Asset(
    name: 'Tron',
    symbol: 'TRX',
    imageUrl: 'assets/images/tron logo.png',
    price: 000,
    amount: 0,
  ),
  Asset(
    name: 'Apecoin',
    symbol: 'APE',
    imageUrl: 'assets/images/apecoin logo.png',
    price: 000,
    amount: 0,
  ),
  Asset(
    name: 'Ripple',
    symbol: 'XRP',
    imageUrl: 'assets/images/ripplr logo.png',
    price: 000,
    amount: 0,
  ),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: background,
      appBar: PreferredSize(
      preferredSize: const Size.fromHeight(50),
      child: Container(
      decoration: BoxDecoration(
      boxShadow: [
      BoxShadow(
      color: textColor5.withOpacity(0.5),
      offset: const Offset(0, 0.4,),
      blurRadius: 0,
      )
      ],
        ),
        child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: background,
        title: const Text(
        'Select Crypto',
        style: TextStyle(
        fontFamily: 'Mabry-Pro',
        fontSize: 20,
        fontWeight: FontWeight.w900,
        ),
        ),
        leading: Builder(
        builder: (context) {
        return IconButton(
        onPressed: (() {
        Navigator.of(context).pop();
        }),
        icon: const ImageIcon(
        AssetImage(
        'assets/images/Return.png',
        ),
        size: 18,
        ));
        },
        ),
        centerTitle: true,
        elevation: 0.0,
        ),
      ),
      ),
      body: Column(
      children: [
      const SizedBox(height: 15,),
      ...assetlist.map((tradelist) => Tradelist(tradelist: tradelist)).toList()
        ],
      ),
    );
  }
}
