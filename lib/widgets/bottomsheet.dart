import 'package:flutter/material.dart';
import 'package:retron/models/assetModel.dart';
import 'package:retron/models/user.dart';
import 'package:retron/screens/select.dart';
import 'package:retron/shared/constant.dart';
import 'package:retron/widgets/receiveList.dart';
import 'package:retron/widgets/sendlist.dart';

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
    walletBalance: 0,
    miningBalance: 0,
    count: 0,
    earnings: 0,
    refferalID: '383930',
  ),
];

void bottomsheet2(context) {
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: ((context) {
        return SingleChildScrollView(
          child: Container(
            height: 700,
            decoration: const BoxDecoration(
              gradient: storyGradient,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Recieve Crypto',
                              style: TextStyle(
                                  fontFamily: 'Mabry-Pro',
                                  color: textColor100,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: SizedBox(
                              height: 25,
                              width: 25,
                              child: Image.asset('assets/images/cancel.png'),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      color: textColor5,
                    ),
                    const SizedBox(
                      height: 0,
                    ),
                    ...assetlist.map(
                        (receiveList) => ReceiveList(receivelist: receiveList)),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }));
}

void bottomsheet1(context) {
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: ((context) {
        return Container(
          height: 500,
          decoration: const BoxDecoration(
            gradient: storyGradient,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: background,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'Send Crypto',
                            style: TextStyle(
                                fontFamily: 'Mabry-Pro',
                                color: textColor100,
                                fontSize: 20,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SizedBox(
                            height: 25,
                            width: 25,
                            child: Image.asset('assets/images/cancel.png'),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: textColor5,
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  ...assetlist.map((list) => Sendlist(list: list))
                ],
              ),
            ),
          ),
        );
      }));
}

void bottomsheet3(context) {
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: ((context) {
        return Container(
          height: 500,
          decoration: const BoxDecoration(
              gradient: storyGradient,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: Container(
              decoration: const BoxDecoration(
                color: background,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SizedBox(
                            height: 25,
                            width: 25,
                            child: Image.asset('assets/images/cancel.png'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: const [
                        Text(
                          'Instant Trade',
                          style: TextStyle(
                              color: textColor100,
                              fontFamily: 'Mabry-Pro',
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Buy or Sell crypto instantly at the current market price',
                            style: TextStyle(
                              color: textColor60,
                              fontFamily: 'Mabry-Pro',
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              height: 1.3,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) => const Select())));
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: stroke),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(12, 9, 12, 11),
                            child: Row(
                              children: [
                                Container(
                                  height: 37,
                                  width: 36,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: fill),
                                  child: Image.asset('assets/images/buy.png'),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Instant Buy',
                                      style: TextStyle(
                                          color: textColor100,
                                          fontFamily: 'Mabry-Pro',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      'Buy cryto instantly',
                                      style: TextStyle(
                                          color: textColor60,
                                          fontFamily: 'Mabry-Pro',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => const Select())));
                      },
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: stroke),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(12, 9, 12, 11),
                          child: Row(
                            children: [
                              Container(
                                height: 37,
                                width: 36,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: fill),
                                child: Image.asset('assets/images/sell.png'),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Instant Sell',
                                    style: TextStyle(
                                        color: textColor100,
                                        fontFamily: 'Mabry-Pro',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    'Sell cryto instantly',
                                    style: TextStyle(
                                        color: textColor60,
                                        fontFamily: 'Mabry-Pro',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => Select())));
                      },
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: stroke),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(12, 9, 12, 11),
                          child: Row(
                            children: [
                              Container(
                                height: 37,
                                width: 36,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: fill),
                                child: Image.asset('assets/images/borrow.png'),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Instant Borrow',
                                    style: TextStyle(
                                        color: textColor100,
                                        fontFamily: 'Mabry-Pro',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    'Borrow cryto instantly',
                                    style: TextStyle(
                                        color: textColor60,
                                        fontFamily: 'Mabry-Pro',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }));
}

void bottomsheet4(context) {
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: ((context) {
        return Container(
          height: 500,
          decoration: const BoxDecoration(
              gradient: storyGradient,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: Container(
              decoration: const BoxDecoration(
                color: background,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SizedBox(
                            height: 25,
                            width: 25,
                            child: Image.asset('assets/images/cancel.png'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: const [
                        Text(
                          'Earn by refferals',
                          style: TextStyle(
                              color: textColor100,
                              fontFamily: 'Mabry-Pro',
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'When anyone signs up with your refferal link, you will gain 10 QUL',
                            style: TextStyle(
                              color: textColor60,
                              fontFamily: 'Mabry-Pro',
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              height: 1.3,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 58,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: contain,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 11, 12, 11),
                        child: Row(
                          children: [
                            Container(
                              height: 36,
                              width: 34,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: background,
                              ),
                              child: Image.asset('assets/images/circle.png'),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: RichText(
                                textAlign: TextAlign.left,
                                text: const TextSpan(
                                    style: TextStyle(
                                        fontFamily: 'Mabry-Pro',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: textColor60),
                                    children: [
                                      TextSpan(text: 'Please check'),
                                      WidgetSpan(
                                          child: SizedBox(
                                        width: 5,
                                      )),
                                      TextSpan(
                                          style: TextStyle(
                                              color: textColor100,
                                              decoration:
                                                  TextDecoration.underline),
                                          text: 'Terms and Conditions'),
                                      WidgetSpan(
                                          child: SizedBox(
                                        width: 5,
                                      )),
                                      TextSpan(text: 'Terms and Conditions'),
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: contain,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 11),
                        child: Row(
                          children: [
                            const Expanded(
                              child: Text(
                                '839398339',
                                style: TextStyle(
                                    color: textColor100,
                                    fontFamily: 'Mabry-Pro',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                              height: 32,
                              width: 59,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: textColor100,
                              ),
                              child: const Center(
                                child: Text(
                                  'Copy',
                                  style: TextStyle(
                                      color: background,
                                      fontFamily: 'Mabry-Pro',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: storyGradient,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 14),
                        child: Row(
                          children: [
                            const Expanded(
                              child: Text(
                                'Share my refferal link',
                                style: TextStyle(
                                    color: background,
                                    fontFamily: 'Mabry-Pro',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                            SizedBox(
                              height: 22,
                              width: 22,
                              child: Image.asset('assets/images/share.png'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }));
}

void bottomsheet5(context) {
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: ((context) {
        return Container(
          decoration: const BoxDecoration(
            color: background,
            gradient: storyGradient,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: Container(
              decoration: const BoxDecoration(
                color: background,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(31, 30, 31, 25),
                child: Column(
                  children: [
                    SizedBox(
                      height: 130,
                      width: 130,
                      child: Image.asset('assets/images/announce.png'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Important Notice',
                      style: TextStyle(
                          fontFamily: 'Mabry-Pro',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: textColor100),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '''While you mine Queelcoin, you won’t be able to 
perform other transactions until the mining period elaspses.''',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Mabry-Pro',
                        color: textColor60,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 62,
                        width: 62,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            gradient: storyGradient),
                        child: const Image(
                            height: 14,
                            width: 14,
                            image: AssetImage('assets/images/cance.png')),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }));
}
