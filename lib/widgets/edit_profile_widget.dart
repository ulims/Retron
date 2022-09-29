import 'package:flutter/material.dart';

import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:retron/models/user.dart';
import 'package:retron/shared/constant.dart';


class EditProfileWidget extends StatelessWidget {
  final User editprofile;
  const EditProfileWidget({Key? key, required this.editprofile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        const SizedBox(
          height: 50,
        ),
        Center(
          child: Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
            gradient: storyGradient,
            borderRadius: BorderRadius.circular(100)),
            child: ProfilePicture(
            name: editprofile.username,
            radius: 100,
            fontsize: 30,
            count: 2,
            tooltip: true,
            role: 'Verified User',
            random: true,
            ),
          ),
        ),
        const SizedBox(height: 50,),
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const Text(
        'Username',
        style: TextStyle(
        fontFamily: 'Mabry-Pro',
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: textColor100,
        ),
        ),
        const SizedBox(height: 7,),
        SizedBox(
        height: 55,
        width: double.infinity,
        child: TextFormField(
        style: const TextStyle(
        fontFamily: 'Mabry-Pro',
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: textColor100,
        ),
        decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
        color: textColor10,
        )),
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5)),
        focusColor: textColor100,
        fillColor: inputColor,
        filled: true,
        contentPadding: const EdgeInsets.fromLTRB(15, 17, 15, 17),
        hintText: editprofile.username,
        hintStyle: const TextStyle(
        fontFamily: 'Mabry-Pro',
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: textColor40),
        )),
        ),
         const SizedBox(height: 40,),
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const Text(
        'Email address',
        style: TextStyle(
        fontFamily: 'Mabry-Pro',
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: textColor100,
        ),
        ),
        const SizedBox(height: 7,),
        SizedBox(
        height: 55,
        width: double.infinity,
        child: TextFormField(
        enabled: false,
        style: const TextStyle(
        fontFamily: 'Mabry-Pro',
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: textColor100,
        ),
        decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
        color: textColor10,
        )),
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5)),
        focusColor: textColor100,
        fillColor: inputColor,
        filled: true,
        contentPadding: const EdgeInsets.fromLTRB(15, 17, 15, 17),
        hintText: editprofile.email,
        hintStyle: const TextStyle(
        fontFamily: 'Mabry-Pro',
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: textColor40),
        )),
        ),
        
        const SizedBox(height: 70,),
        Container(
        decoration: BoxDecoration(
        gradient: storyGradient,
        borderRadius: BorderRadius.circular(30)),
        height: 55,
        width: double.infinity,
        child: TextButton(
        onPressed: ()  {},
        child: const Text(
        'Save Changes',
        style: TextStyle(
        fontFamily: 'Mabry-Pro',
        fontSize: 15,
        fontWeight: FontWeight.w900,
        color: background),
        )
        ),
        ),
        const SizedBox(height: 40,) 
        ],
        )
      ],
    )
    ]);
  }
}
