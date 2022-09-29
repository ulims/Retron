import 'package:flutter/material.dart';
import 'package:retron/models/assetModel.dart';
import 'package:retron/screens/crypto.dart';
import 'package:retron/shared/constant.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class Receive extends StatelessWidget {
  final Asset coins;
  const Receive({Key? key, required this.coins, required this.receivelist}) : super(key: key);

  final Asset receivelist;
  

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  backgroundColor: background,
  appBar: PreferredSize(
  preferredSize: const Size.fromHeight(50),
  child: AppBar(
  automaticallyImplyLeading: false,
  backgroundColor: background,
  title: Text(
  'Receive ${coins.symbol}',
  style: const TextStyle(
  fontFamily: 'Mabry-Pro',
  fontSize: 20,
  fontWeight: FontWeight.w900,
  ),
  ),
  leading: Builder(
  builder: (context) {
  return IconButton(
  onPressed: (() {
  Navigator.of(context).pop(MaterialPageRoute(
  builder: ((context) => Crypto(coins: coins))));
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
  body: SafeArea(
    child: SingleChildScrollView(
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 18),
    child: Column(
    children: [
    const SizedBox(height: 20,),
    Container(
    width: double.infinity,
    decoration: BoxDecoration(
    color: contain,
    borderRadius: BorderRadius.circular(5),
    border: Border.all(
    width: 1,
    color: stroke
    ),
    ),
    child: Padding(
    padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
    child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Image.asset('assets/images/warning.png',
    height: 20,
    width: 20,
    ),
    const SizedBox(width: 8,),
    Flexible(
    child: Text(
    'Only send ${coins.name} to this address. Ensure the sender is on the ${coins.symbol} network or you might lose your depoit',
    style: const TextStyle(
    fontFamily: 'Mabry-Pro',
    color: textColor60,
    height: 1.6,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    ),
    ),
    ),
    ],
    ),
    ),
    ),
    const SizedBox(height: 35,),
    PrettyQr(
      image: 
      AssetImage(coins.imageUrl),
      data: 'TApg7EBMwqBSdTSpMGx3MARad8UEkxK5ET',
      size: 230,
      elementColor: textColor100,
      typeNumber: 5,
      roundEdges: true,
      //errorCorrectLevel: QrErrorCorrectLevel.M,
      ),
     const SizedBox(height: 35,),
    Container(
    width: double.infinity,
    decoration: BoxDecoration(
    color: background,
    borderRadius: BorderRadius.circular(5),
    border: Border.all(
    width: 1,
    color: stroke
    ),
    ),
    child: Padding(
    padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
         Text('Deposit address',
        style: TextStyle(
        fontFamily: 'Mabry-Pro',
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: textColor100,
        height: 1.6,
        ),
        ),
        SizedBox(height: 3,),
        Text('TApg7EBMwqBSdTSpMGx3MARad8UEkxK5ET',
        style: TextStyle(
        fontFamily: 'Mabry-Pro',
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: textColor60,
        height: 1.6,
        ),
        ),
      ],
    ),
    ),
    ),
    SizedBox(height: 60,),

    ///
    Container(
    height: 55,
    width: double.infinity,
    decoration: BoxDecoration(
    gradient: storyGradient,
    borderRadius: BorderRadius.circular(30)
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    SizedBox(
    height: 24,
    width: 24,
    child: Image.asset('assets/images/copy.png'),
    ),
    const SizedBox(width: 7,),
    const Text('Copy address',
    style: TextStyle(
    fontFamily: 'Mabry-Pro',
    fontSize: 14,
    fontWeight: FontWeight.w900,
    color: background,
    height: 1.6,
    ),
    ),
        ],
      ),
    ),
          ],
        ),
      ),
    ),
  ),
  );
  }
}
