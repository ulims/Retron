import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:retron/shared/constant.dart';

class Prices extends StatefulWidget {
  const Prices({Key? key}) : super(key: key);

  @override
  State<Prices> createState() => _PricesState();
}

class _PricesState extends State<Prices> {
   void initState() {
    super.initState();
    print('init state called for prices');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: PreferredSize(
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: textColor5.withOpacity(0.5),
                offset: Offset(0, 0.4,),
                blurRadius: 0,
              )
            ]),
            child: AppBar(
              backgroundColor: background,
              automaticallyImplyLeading: false,
              centerTitle: false,
              elevation: 0.0,
              title: Text(
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
          preferredSize: Size.fromHeight(60),
          
        ),
    );
  }
}
