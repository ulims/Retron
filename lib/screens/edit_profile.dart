import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:retron/models/user.dart';
import 'package:retron/shared/constant.dart';
import 'package:retron/widgets/edit_profile_widget.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

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
        'Edit Profile',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: SingleChildScrollView(
          child: Column(
            children: [
            ...user.map((editprofile) => EditProfileWidget(editprofile: editprofile)),
            ]
            ),
        ) 
  )
  );
  }
}
