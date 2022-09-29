import 'package:flutter/material.dart';
import 'package:retron/models/user.dart';
import 'package:retron/screens/edit_profile.dart';
import 'package:retron/screens/refferals.dart';
import 'package:retron/screens/support.dart';
import 'package:retron/shared/constant.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class ProfileDetails extends StatelessWidget {
  final User user;
  const ProfileDetails({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
      children: [
      const SizedBox(height: 30,),
      Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Container(height: 65,width: 65,
      decoration: BoxDecoration(
      gradient: storyGradient,
      borderRadius: BorderRadius.circular(100)),
      child: ProfilePicture(
      name: user.username, 
      radius: 100, 
      fontsize: 30,
      count: 2,
      tooltip: true,
      role: 'Verified User',
      random: true,
      ),
      ),
      const SizedBox(width: 12,),
      Expanded(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(
      user.username,
      style: const TextStyle(
      color: textColor100,
      fontFamily: 'Mabry-Pro',
      fontSize: 20,
      fontWeight: FontWeight.w500),),
      const SizedBox(height: 7,),
      Row(
      children: [
      SizedBox(
      height: 15,
      width: 15,
      child: Image.asset('assets/images/verified.png'),
      ),
      const SizedBox(width: 4,),
      const Text(
      'Verified quiller',
      style: TextStyle(
      color: textColor80,
      fontFamily: 'Mabry-Pro',
      fontSize: 14,
      fontWeight: FontWeight.w400),
      ),
      ],
      ),
      ],
      ),
      ),
      SizedBox(
      height: 24,
      width: 22,
      child: Image.asset('assets/images/logout.png'),
      ),
      ],
      ),
      const SizedBox(height: 20,),
      const Divider(color: textColor5,),

      const SizedBox(height: 14,),
      GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: ((context) => EditProfile())));
        },
        child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Expanded(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const[
         Text(
        'Edit profile',
        style: TextStyle(
        color: textColor100,
        fontFamily: 'Mabry-Pro',
        fontSize: 16,
        fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 5,),
        Text(
        'Change username',
        style: TextStyle(
        color: textColor60,
        fontFamily: 'Mabry-Pro',
        fontSize: 13,
        fontWeight: FontWeight.w400),
        ),
        ],
        ),
        ),
        Container(
        height: 30,
        width: 59,
        decoration: BoxDecoration(
        border: Border.all(
        width: 1,
        color: textColor60
        ),
        borderRadius: BorderRadius.circular(5)
        ),
        child: const Center(
        child: Text(
        'Edit',
        style: TextStyle(
        color: textColor100,
        fontFamily: 'Mabry-Pro',
        fontSize: 13,
        fontWeight: FontWeight.w400),
        ),
        ),
        ),
        ],
        ),
      ),
      const SizedBox(height: 20,),
      const SizedBox(height: 14,),
      GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
          builder: ((context) => Refferals())));
        },
        child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Expanded(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const Text(
        'Refferals',
        style: TextStyle(
        color: textColor100,
        fontFamily: 'Mabry-Pro',
        fontSize: 16,
        fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 5,),
        Text(
        user.refferals.toString(),
        style: const TextStyle(
        color: textColor60,
        fontFamily: 'Mabry-Pro',
        fontSize: 13,
        fontWeight: FontWeight.w400),
        ),
        ],
        ),
        ),
        Container(
        height: 30,
        width: 59,
        decoration: BoxDecoration(
        border: Border.all(
        width: 1,
        color: textColor60
        ),
        borderRadius: BorderRadius.circular(5)
        ),
        child: const Center(
        child: Text(
        'View',
        style: TextStyle(
        color: textColor100,
        fontFamily: 'Mabry-Pro',
        fontSize: 13,
        fontWeight: FontWeight.w400),
        ),
        ),
        ),
        ],
        ),
      ),
      const SizedBox(height: 14,),
     
      
      const Divider(color: textColor5,),

      const SizedBox(height: 14,),
      Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Expanded(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const[
       Text(
      'Security change',
      style: TextStyle(
      color: textColor100,
      fontFamily: 'Mabry-Pro',
      fontSize: 16,
      fontWeight: FontWeight.w500),
      ),
      SizedBox(height: 5,),
      Text(
      'Disabled',
      style: TextStyle(
      color: textColor60,
      fontFamily: 'Mabry-Pro',
      fontSize: 13,
      fontWeight: FontWeight.w400),
      ),
      ],
      ),
      ),
      Container(
      height: 30,
      width: 59,
      decoration: BoxDecoration(
      border: Border.all(
      width: 1,
      color: textColor60
      ),
      borderRadius: BorderRadius.circular(5)
      ),
      child: const Center(
      child: Text(
      'Edit',
      style: TextStyle(
      color: textColor100,
      fontFamily: 'Mabry-Pro',
      fontSize: 13,
      fontWeight: FontWeight.w400),
      ),
      ),
      ),
      ],
      ),
      const SizedBox(height: 20,),
      const SizedBox(height: 14,),
      Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Expanded(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const[
       Text(
      'Activate fingerprint',
      style: TextStyle(
      color: textColor100,
      fontFamily: 'Mabry-Pro',
      fontSize: 16,
      fontWeight: FontWeight.w500),
      ),
      SizedBox(height: 5,),
      Text(
      'Disabled',
      style: TextStyle(
      color: textColor60,
      fontFamily: 'Mabry-Pro',
      fontSize: 13,
      fontWeight: FontWeight.w400),
      ),
      ],
      ),
      ),
      Container(
      height: 30,
      width: 59,
      decoration: BoxDecoration(
      border: Border.all(
      width: 1,
      color: textColor60
      ),
      borderRadius: BorderRadius.circular(5)
      ),
      child: const Center(
      child: Text(
      'Edit',
      style: TextStyle(
      color: textColor100,
      fontFamily: 'Mabry-Pro',
      fontSize: 13,
      fontWeight: FontWeight.w400),
      ),
      ),
      ),
      ],
      ),
      const SizedBox(height: 14,),
      const Divider(color: textColor5,),
      const SizedBox(height: 14,),
      

      GestureDetector(
        onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: ((context) => Support())));
        },
        child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Expanded(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const[
         Text(
        'Report a problem',
        style: TextStyle(
        color: textColor100,
        fontFamily: 'Mabry-Pro',
        fontSize: 16,
        fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 5,),
        Text(
        'We’ll respond directly to your mail inbox',
        style: TextStyle(
        color: textColor60,
        fontFamily: 'Mabry-Pro',
        fontSize: 13,
        fontWeight: FontWeight.w400),
        ),
        ],
        ),
        ),
        Container(
        height: 30,
        width: 59,
        decoration: BoxDecoration(
        border: Border.all(
        width: 1,
        color: textColor60
        ),
        borderRadius: BorderRadius.circular(5)
        ),
        child: const Center(
        child: Text(
        'Send',
        style: TextStyle(
        color: textColor100,
        fontFamily: 'Mabry-Pro',
        fontSize: 13,
        fontWeight: FontWeight.w400),
        ),
        ),
        ),
        ],
        ),
      ),
      ],
      ),
    );
  }
}
