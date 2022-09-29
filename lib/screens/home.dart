import 'package:flutter/material.dart';
import 'package:retron/models/assetModel.dart';
import 'package:retron/models/user.dart';
import 'package:retron/widgets/home_widgets.dart';
import 'package:retron/shared/constant.dart';
import 'package:retron/widgets/assetCard.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    name: 'Queelcoin',
    symbol: 'QUL',
    imageUrl: 'assets/images/apecoin logo.png',
    price: 1000,
    amount: 10,
  ),
  Asset(
    name: 'Ripple',
    symbol: 'XRP',
    imageUrl: 'assets/images/ripplr logo.png',
    price: 000,
    amount: 0,
  ),
];

List<User> user = <User>[
 User(
  email: 'Johndoe@gmail.com', 
  otp: 3434, 
  username: 'John', 
  pin: 1234,
  refferals: 0,
  walletBalance: 10.00,
  miningBalance: 130,
  count: 0,
  earnings: 0,
  refferalID: '383930',
  ), 
];

  ///
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  backgroundColor: background,
  body: SingleChildScrollView(
  child: Column(
  children: [
  
  ///
   ...user.map((homecard) => HomeWidget(homecard: homecard)),

  ///
  const SizedBox(height: 25,),

///
  Padding(
  padding: const EdgeInsets.symmetric(
  horizontal: 18,
  ),
  child: Column(
  children: [
  Row(
  children: const [
  Text(
  'Assets',
  style: TextStyle(
  color: textColor100,
  fontFamily: 'Mabry-Pro',
  fontSize: 20,
  fontWeight: FontWeight.w900,
  ),
  ),
  ],
  ),
  ],
  ),
  ),

  //
  ...assetlist.map((coins) => AssetCard(coins: coins))
  ],
  ),
  ),
  );
}
}

