// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:swiftpay/util/color.dart';
import 'package:swiftpay/util/sideNavBar.dart';
import 'package:swiftpay/util/space.dart';
import 'package:swiftpay/util/topBar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

   var payment_icon = Icon(Icons.payment_outlined, color: white,);
   var history_icon = Icon(Icons.history, color: white,);
   var home_icon = Icon(Icons.home, color: white,);
   var print_icon = Icon(Icons.print, color: white,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: appBar("SwiftPay"),
      drawer: const SideNavBar(),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _container(payment_icon, "New Payment"),
              _container(history_icon, "History"),
              _container(home_icon, "Home"),
            ],
          ),
          Vspace(10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _container(print_icon, "Print Receipt"),
              _container(history_icon, "History"),
              _container(home_icon, "Home"),
            ],
          )
        ],
      ),
    );
  }

  Container _container(Icon icon, String title) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const <BoxShadow>[
          BoxShadow(
              color: Colors.black54,
              blurRadius: 5.0,
              offset: Offset(0.0, 0.15))
        ],
        color: primary,
      ),
      width: 100,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         icon,
          Text(
             title,
            style: TextStyle(
              color: accent2,
            ),
          )
        ],
      ),
    );
  }
}
