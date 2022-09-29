import 'package:flutter/material.dart';
import 'package:retron/models/user.dart';
import 'package:retron/shared/constant.dart';

class RefferalWidget extends StatelessWidget {
  final User refferals;
  const RefferalWidget({Key? key, required this.refferals}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 30,
        ),
        Container(
          height: 90,
          width: double.infinity,
          decoration: BoxDecoration(
          border: Border.all(
          width: 1,
          color: stroke,
          ),
          borderRadius: BorderRadius.circular(10)),
          child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 15),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
          const Text(
          'REFFERALS',
          style: TextStyle(
          fontFamily: 'Mabry-Pro',
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: textColor40,
          ),
          ),
          Text(
          refferals.refferals.toString(),
          style: const TextStyle(
          fontFamily: 'Mabry-Pro',
          fontSize: 35,
          fontWeight: FontWeight.w400,
          color: textColor100,
          ),
          ),
          ],
          ),
          const SizedBox(
          width: 60,
          ),
          const Text(
          'OF',
          style: TextStyle(
          fontFamily: 'Mabry-Pro',
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: textColor40,
          ),
          ),
          const SizedBox(
          width: 70,
          ),
          Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
          Text(
          'EARNINGS',
          style: TextStyle(
          fontFamily: 'Mabry-Pro',
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: textColor40,
          ),
          ),
          Text(
          '0',
          style: TextStyle(
          fontFamily: 'Mabry-Pro',
          fontSize: 35,
          fontWeight: FontWeight.w400,
          color: textColor100,
          ),
          ),
          ],
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
          color: background,
          border: Border.all(
          width: 1,
          color: stroke,
          ),
          ),
          child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
          child: Row(
          children: [
           Expanded(
          child: Text(
          refferals.refferalID,
          style: const TextStyle(
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
          borderRadius: BorderRadius.circular(5),
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

          const SizedBox(height: 30,),
          Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
          gradient: storyGradient,
          borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
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
    );
  }
}
