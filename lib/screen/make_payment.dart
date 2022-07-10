import 'package:flutter/material.dart';
import 'package:swiftpay/util/button.dart';
import 'package:swiftpay/util/formField.dart';
import 'package:swiftpay/util/sideNavBar.dart';
import 'package:swiftpay/util/space.dart';
import 'package:swiftpay/util/topBar.dart';

// ignore: camel_case_types
class Make_payment extends StatefulWidget {
  const Make_payment({Key? key}) : super(key: key);

  @override
  State<Make_payment> createState() => _Make_paymentState();
}

// ignore: camel_case_types
class _Make_paymentState extends State<Make_payment> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _paymentCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: appBar("New Payment"),
      drawer: const SideNavBar(),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [  
          Vspace(30.0),
          Form(
              key: _formKey,
              child: Column(
               crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  label1("Payment Code", 16.0),
                  Vspace(10.0),
                  textFilled(_paymentCode, "2233567890"), //pass field
                  Vspace(20.0), //space
                  //button Container
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    child: btn("Pay Now"),
                    ),
                  Vspace(15.0), //space
                ],
              ))
        ],
      ),
    );
  }





}
