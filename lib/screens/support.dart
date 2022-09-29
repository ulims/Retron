import 'package:flutter/material.dart';
import 'package:retron/shared/constant.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: background,
    

    body: SingleChildScrollView(
    child: Column(
      children: [
        Stack(
        children: [
        
        Image.asset('assets/images/help.png'),
   
        SizedBox(
        height: 130,
        child: Align(
        alignment: Alignment.centerLeft,
        child: IconButton(
        color: textColor100,
        iconSize: 20,
        onPressed: (() {
        Navigator.of(context).pop();
        }), 
        icon: const ImageIcon(
        AssetImage('assets/images/Return.png',
        ))),
        ),
        )
        ],
        ),
        const SizedBox(height: 35,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
          children: [
          const Text(
          'Tell us how we can help👋',
          style: TextStyle(
          color: textColor100,
          fontFamily: 'Mabry-Pro',
          fontSize: 20,
          fontWeight: FontWeight.w900
          ),
          ),
          const SizedBox(height: 2,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
            'Our crew of superheroes are standing by for service & support',
            textAlign: TextAlign.center,
            style: TextStyle(
            color: textColor60,
            fontFamily: 'Mabry-Pro',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 1.4
            ),
            ),
          ),
          const SizedBox(height: 50,),
          Container(
          height: 58,
          width: double.infinity,
          decoration: BoxDecoration(
          border: Border.all(
          width: 1,
          color: stroke
          ),
          borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(5)
            ),
            child: Image.asset('assets/images/chat.png'),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const[
              Text(
              'Chat',
              textAlign: TextAlign.center,
              style: TextStyle(
              color: textColor100,
              fontFamily: 'Mabry-Pro',
              fontSize: 15,
              fontWeight: FontWeight.w400,
              ),
              ),
              SizedBox(height: 2,),
              Text(
              'Start a conversation now!',
              textAlign: TextAlign.center,
              style: TextStyle(
              color: textColor60,
              fontFamily: 'Mabry-Pro',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              ),
              ),
              ],
              ),
            ),
            Container(
            height: 20,
            width: 20,
            child: Image.asset('assets/images/right.png'),
            )
            ],
            ),
          ),
          ),
          const SizedBox(height: 30,),
          Container(
          height: 58,
          width: double.infinity,
          decoration: BoxDecoration(
          border: Border.all(
          width: 1,
          color: stroke
          ),
          borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(5)
            ),
            child: Image.asset('assets/images/FAQ.png'),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const[
              Text(
              'FAQs',
              textAlign: TextAlign.center,
              style: TextStyle(
              color: textColor100,
              fontFamily: 'Mabry-Pro',
              fontSize: 15,
              fontWeight: FontWeight.w400,
              ),
              ),
              SizedBox(height: 2,),
              Text(
              'Find intelligent answers immediately',
              textAlign: TextAlign.center,
              style: TextStyle(
              color: textColor60,
              fontFamily: 'Mabry-Pro',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              ),
              ),
              ],
              ),
            ),
            SizedBox(
            height: 20,
            width: 20,
            child: Image.asset('assets/images/right.png'),
            )
            ],
            ),
          ),
          ),
          ],
          ),
        )
      ],
    ),
    ), 
    );
  }
}
