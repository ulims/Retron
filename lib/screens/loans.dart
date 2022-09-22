import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:retron/shared/constant.dart';

class Loans extends StatefulWidget {
  const Loans({Key? key}) : super(key: key);

  @override
  State<Loans> createState() => _LoansState();
}

class _LoansState extends State<Loans> {
   void initState() {
    super.initState();
    print('init state called for loans');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
    );
  }
}
