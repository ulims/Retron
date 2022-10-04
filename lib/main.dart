import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:retron/screens/login.dart';
import 'package:retron/screens/onbaord.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:native_notify/native_notify.dart';

int? isviewed;


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  NativeNotify.initialize(1878, 'N2EQ1kQM1R7m6QZgUUxsc1', null, null);

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light));

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
