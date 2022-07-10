// ignore_for_file: file_names
import 'package:swiftpay/util/color.dart';
import 'package:swiftpay/util/validator.dart';
import 'package:flutter/material.dart';

TextFormField emailField(controller, hint) {
  //email field
  return TextFormField(
      controller: controller,
      cursorColor: secondary,
      decoration: InputDecoration(
        // focusedBorder: OutlineInputBorder(
        //   borderSide:BorderSide(
        //     color:accent2,
        //   ) ,
        // ),
          
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0))),
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 13,
            color: Colors.grey[400],
          ),
          prefixIcon: const Icon(Icons.email_outlined,)),
      validator: (value) {
        //validator
        return isEmail(value!);
      });
}

//ordinary textfield with no icon
TextFormField textFilled(controller, hint) {
  //email field
  return TextFormField(
      controller: controller,
      cursorColor: secondary,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide:BorderSide(
            color:accent2,
          ) ,
        ),
          
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0))),
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 13,
            color: Colors.grey[400],
          ),
        ),
      validator: (value) {
        //validator
      
      });
}



Text label(String label, double _fontSize,) {
  return Text(
    label,
    style: TextStyle(
      color: accent2,
      fontSize: _fontSize,
    ),
  );
}


Text label1(String label, double _fontSize,) {
  return Text(
    label,
    style: TextStyle(
      color: primary,
      fontSize: _fontSize,
    ),
  );
}
  //password widget
 
