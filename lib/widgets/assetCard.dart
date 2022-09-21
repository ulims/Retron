import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:retron/models/assetModel.dart';
import 'package:retron/shared/constant.dart';

class AssetCard extends StatefulWidget {
  const AssetCard({Key? key}) : super(key: key);

  @override
  State<AssetCard> createState() => _AssetCardState();
}

class _AssetCardState extends State<AssetCard> {
  List<Asset> assetlist = <Asset>[
    Asset(
      name: 'Bitcoin', 
      symbol: 'BTC', 
      imageUrl: 'assets/images/bitcoin logo.png', 
      price: 000, 
      amount: 0,),
      Asset(
      name: 'Tether', 
      symbol: 'USDT', 
      imageUrl: 'assets/images/tether logo.png', 
      price: 000, 
      amount: 0,),
      Asset(
      name: 'Tron', 
      symbol: 'TRX', 
      imageUrl: 'assets/images/tron logo.png', 
      price: 000, 
      amount: 0,),
      Asset(
      name: 'Apecoin', 
      symbol: 'APE', 
      imageUrl: 'assets/images/apecoin logo.png', 
      price: 000, 
      amount: 0,),
      Asset(
      name: 'Ripple', 
      symbol: 'XRP', 
      imageUrl: 'assets/images/ripplr logo.png', 
      price: 000, 
      amount: 0,),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: ListView.builder(
        shrinkWrap: true,
        
          itemCount: 5,
          itemBuilder: (context, index) {
            return Column(
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
                          assetlist[index].imageUrl,
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
                                assetlist[index].name,
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
                                assetlist[index].symbol,
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
                              locale: 'en-us', decimalDigits: 2,).format(
                                assetlist[index].price),
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
                              locale: 'en-US', decimalDigits: 2,).format(
                            assetlist[index].amount, ),
                            
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
            );
          },
        )
        );
  }
}
