// ignore_for_file: non_constant_identifier_names, slash_for_doc_comments

import 'package:flutter/material.dart';
import 'package:swiftpay/util/button.dart';
import 'package:swiftpay/util/formField.dart';
import 'package:swiftpay/util/sideNavBar.dart';
import 'package:swiftpay/util/space.dart';
import 'package:swiftpay/util/topBar.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //variable declaration
  bool isvisible = true;
  Icon iconn = const Icon(Icons.visibility);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: _ListView(),
      ),
    );
  } // end of buid login

  /** 
   * A method that returns list view widget 
  */
  ListView _ListView() {
    return ListView(
      padding: const EdgeInsets.all(20.0),
      children: [
        //logo image
        Center(
          child: Image.asset(
            'assets/images/swiftpay.png',
           // alignment: Alignment.bottomLeft,
            width: 80,
            height: 80,
          ),
        ),
        //Vertical space
   
        //greetings
        const Center(
          child:  Text(
            "Proceed with your ",
            style: TextStyle(
               letterSpacing: 2.0,
              fontFamily: 'Roboto',
              fontSize: 16.0,
            ),
          ),
        ),

        //greetings
        const Center(
          child: Text(
            "Login",
            style: TextStyle(
                 letterSpacing: 2.0,
              fontFamily: 'inter',
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
            ),
          ),
        ),
        //Vertical space
        Vspace(30.0),
        //form section
        _form(),
      ],
    );
  } // end of listView

  Form _form() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          label1("Email", 16.0),
          Vspace(10.0),
          emailField(_email, "myemail@gmail.com"), //email field
          Vspace(20.0), //space
          label1("Password", 16.0),
          Vspace(10.0),
          passwordFiled(), //pass field
          Vspace(20.0), //space
          //button Container
          InkWell(
            onTap : (){
               Navigator.pushReplacementNamed(context, "/payment");
            },
            child: btn("Sign in"),
            ),
          Vspace(15.0), //space
          moreAction("Forgot password?", "Recover here"),
          Vspace(170.0), //space
          moreAction("Don't have an account?", "Signup here")
        ],
      ),
    );
  }

  //password field method
  TextFormField passwordFiled() {
    return TextFormField(
        controller: _pass,
        obscureText: isvisible,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0))),
          hintText: "12344555",
          hintStyle: TextStyle(
            fontSize: 13,
            color: Colors.grey[400],
          ),
          prefixIcon: const Icon(Icons.lock_outline),
          suffixIcon: _icon(),
        ),
        validator: (value) {
          //validate password filed
          return (value == null || value.isEmpty)
              ? "Password field cannot be empty"
              : null;
        });
  }

//Password toggle suffix icon
  _icon() {
    if (isvisible) {
      return InkWell(
        onTap: () {
          setState(() {
            isvisible = false;
            iconn = const Icon(Icons.visibility_off);
          });
        },
        child: iconn,
      );
    } else {
      return InkWell(
        onTap: () {
          setState(() {
            isvisible = true;
            iconn = const Icon(Icons.visibility);
          });
        },
        child: iconn,
      );
    }
  }

  Row moreAction(String one, String two) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        label1(one, 13.0),
        Hspace(10.0),
        InkWell(
          //signup click link
          onTap: () {
            Navigator.pushNamed(context, '/signup');
          },
          child: label(
            two,
            13.0,
          ),
        ),
      ],
    );
  }
}
