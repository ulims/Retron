import 'package:flutter/material.dart';
import 'package:retron/shared/constant.dart';
import 'package:retron/widgets/coinCard.dart';



class Prices extends StatefulWidget {
  const Prices({Key? key}) : super(key: key);

  @override
  State<Prices> createState() => _PricesState();
}

class _PricesState extends State<Prices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: textColor5.withOpacity(0.5),
                offset: const Offset(0, 0.4,),
                blurRadius: 0,
              )
            ]),
            child: AppBar(
              backgroundColor: background,
              automaticallyImplyLeading: false,
              centerTitle: false,
              elevation: 0.0,
              title: const Text(
                "Prices",
                style: TextStyle(
                  fontFamily: 'Mabry-Pro',
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  color: textColor100
                ),
                ),
            ),
          ),
        ),
        body: CoinCard(),
    );
  }
}