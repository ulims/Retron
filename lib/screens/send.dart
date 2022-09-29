

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:retron/models/assetModel.dart';
import 'package:retron/screens/home.dart';
import 'package:retron/shared/constant.dart';
import 'package:retron/widgets/bottomsheet.dart';

class SendCard extends StatelessWidget {
  final Asset list;
  final Asset coins;
  const SendCard({Key? key, required this.list, required this.coins}) : super(key: key);

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
      'Send ${list.symbol}',
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
      builder: ((context) => Home())));
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
      body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
      children: [
      const SizedBox(height: 25,),
      Container(
      decoration: BoxDecoration(
      gradient: storyGradient,
      borderRadius: BorderRadius.circular(5.0)
      ),
      child: Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
      height: 72,
      width: double.infinity,
      decoration: BoxDecoration(
      color: contain,
      borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
      padding: const EdgeInsets.symmetric(
      horizontal: 18,vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const Text(
      'Available balance',
      style: TextStyle(
      fontFamily: 'Mabry-Pro',
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: textColor60
      ),
      ),
      const SizedBox(height: 3,),
      Text(
      list.amount.toString(),
      style: const TextStyle(
      fontFamily: 'Mabry-Pro',
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: textColor100
      ),
      ),
      ],
      ),
      ),
      ),
      ),
      ),
      const SizedBox(height: 40,),
      Column(
       crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      const Text(
      'Enter Amount',
      style: TextStyle(
      fontFamily: 'Mabry-Pro',
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: textColor60
      ),
      ),
      SizedBox(
      width: double.infinity,
      child: Form(
      child: TextFormField(
      cursorColor: textColor5,
      showCursor: true,
      autofocus: true,
      mouseCursor: MouseCursor.defer,
      cursorRadius: Radius.circular(30),
      cursorHeight: 45,
      cursorWidth: 3,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
      FilteringTextInputFormatter.digitsOnly
      ],
      style: const TextStyle(
      fontFamily: 'Mabry-Pro',
      fontSize: 40,
      fontWeight: FontWeight.w400,
      color: textColor100,
      ),
      decoration: const InputDecoration(
      border: InputBorder.none,
      fillColor: background,
      filled: true,
      hintText: '0.00',
      hintStyle: TextStyle(
      fontFamily: 'Mabry-Pro',
      fontSize: 40,
      color: textColor10
      )
      ),
      )
      ),
      ),
     
      ],
      ),
      const Spacer(),
      Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
        gradient: storyGradient,
        borderRadius: BorderRadius.circular(30)
        ),
        child: TextButton(
        onPressed: () {
          bottomsheet5(context);
        },
        child: const Text(
        'Continue',
        style: TextStyle(
        fontFamily: 'Mabry-Pro',
        fontSize: 15,
        fontWeight: FontWeight.w900,
        color: background,
        ),
        ),
        ),
      ),
      const SizedBox(height: 35,),
      ],
      ),
      ),
    );
  }
}
