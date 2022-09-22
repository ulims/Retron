import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:retron/screens/login.dart';
import 'package:retron/screens/onbaord.dart';
import 'package:shared_preferences/shared_preferences.dart';


int? isviewed;

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.black,
    statusBarIconBrightness: Brightness.light
  ));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isviewed = prefs.getInt('onBoard');
  runApp(const MyApp());
  
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyappState();
}

class _MyappState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Retron',
       theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       home: isviewed != 0 ? const OnBoard() : const Login(),
    );
  }
}
