
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:swiftpay/util/color.dart';
import 'package:swiftpay/util/space.dart';
class SideNavBar extends StatefulWidget {
  const SideNavBar({ Key? key }) : super(key: key);

  @override
  State<SideNavBar> createState() => _SideNavBarState();
}

class _SideNavBarState extends State<SideNavBar> {
  @override
  Widget build(BuildContext context) {
   return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: primary,
          ),
          accountName: Text("toyin",
              style: TextStyle(
                fontSize: 20.0,
                letterSpacing: 5.0,
                color: white,
              )),
          accountEmail: Text("toy5050@gmail",
              
              style: TextStyle(
                 fontSize: 20.0,
                letterSpacing: 5.0,
                color: white,
              )),
        ),
       ListTile(
          onTap: ()=> Navigator.pushReplacementNamed(context, '/home'),
          leading: const Icon(Icons.home_filled),
          title: const Text("Home"),
        ),
        const Divider(),
        ListTile(
          onTap: ()=> Navigator.pushReplacementNamed(context, '/payment'),
          leading: const Icon(Icons.payment_outlined),
          title: const Text("New Payment"),
        ),
        const Divider(),
        const ListTile(
          leading: Icon(Icons.history),
          title: Text("Payment History"),
        ),
        const Divider(),
        const ListTile(
          leading: Icon(Icons.logout_outlined),
          title: Text("log out"),
        ),
        const Divider(),
        Vspace(150.0),
        Image.asset(
          'assets/images/swiftpay.png',
          width: 40,
          height: 40,
        ),
      ],
    ),
  );
  }
}
