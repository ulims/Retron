import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:retron/screens/login_prices.dart';
import 'package:retron/screens/otp.dart';
import 'package:retron/shared/constant.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formKey = GlobalKey<FormState>();
  String email = '';
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
                  Container(
                      height: 22,
                      child: Image.asset('assets/images/Login logo.png')),
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
                        'Create an account',
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
                        'Welcome to Retron, let’s get to know you better',
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
                            val!.isEmpty ? 'Enter your a username' : null,
                        onChanged: (val) {
                          setState(() => email = val);
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
                          hintText: 'Username',
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
                    gradient: email.length > 2 ? storyGradient : fading,
                    borderRadius: BorderRadius.circular(30)),
                height: 55,
                width: double.infinity,
                child: TextButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const Loginprices())));
                      }
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          fontFamily: 'Mabry-Pro',
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: email.length > 2 ? background : textColor60),
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
