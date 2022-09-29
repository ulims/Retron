import 'package:flutter/material.dart';

import 'package:retron/models/user.dart';
import 'package:retron/shared/constant.dart';
import 'package:retron/widgets/profile_details.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: background,
    appBar: PreferredSize(
    preferredSize: const Size.fromHeight(60),
    child: Container(
    decoration: BoxDecoration(
    boxShadow: [
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
    "Profile",
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
    body: Column(
      children: [
        ...user.map((user) => ProfileDetails(user:user))
      ],
    )
    );
  }
}
