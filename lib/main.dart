
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swiftpay/screen/home.dart';
import 'package:swiftpay/screen/make_payment.dart';
import 'package:swiftpay/util/color.dart';
import 'screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: secondary));

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SwiftPay',
       initialRoute: "/login",
       routes: {
          '/home': (context) => const Home(),
          '/login': (context) => const Login(),
          '/payment': (context) => const Make_payment(),
       },
    );
    
  }
}

