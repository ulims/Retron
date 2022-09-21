import 'package:flutter/material.dart';
import 'package:retron/screens/create%20account.dart';
import 'package:retron/screens/login.dart';
import 'package:retron/shared/constant.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
   final _formKey = GlobalKey<FormState>();
  String otp = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // ignore: sized_box_for_whitespace
                  InkWell(
                    onTap: () {
                       Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const Login())));
                    },
                    child: Container( 
                      height: 10,
                        child: Image.asset('assets/images/Return.png')),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Verify OTP Code',
                        style: TextStyle(
                            fontFamily: 'Mabry-Pro',
                            color: textColor100,
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Enter the six digit OTP code sent to your email',
                        style: TextStyle(
                            fontFamily: 'Mabry-Pro',
                            color: textColor60,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                  height: 85,
                  child: Form(
                    key: _formKey,
                    child: TextFormField(
                        validator: (val) =>
                            val!.isEmpty ? 'Enter your 4 digit OTP code' : null,
                        onChanged: (val) {
                          setState(() => otp = val);
                        },
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: textColor100,
                        autofillHints: const [AutofillHints.email],
                        autofocus: true,
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
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: textColor10)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          focusColor: textColor100,
                          fillColor: inputColor,
                          filled: true,
                          contentPadding: const EdgeInsets.fromLTRB(15, 17, 15, 17),
                          hintText: 'OTP code',
                          hintStyle: const TextStyle(
                              fontFamily: 'Mabry-Pro',
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: textColor40),
                        )),
                  )),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    gradient: otp.length > 3 ? storyGradient : fading,
                    borderRadius: BorderRadius.circular(30)),
                height: 55,
                width: double.infinity,
                child: TextButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const CreateAccount())));
                      }
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          fontFamily: 'Mabry-Pro',
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: otp.length > 3 ? background : textColor60),
                    )),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
