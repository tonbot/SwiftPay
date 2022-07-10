

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:swiftpay/util/color.dart';
AppBar appBar( String title){
   return AppBar(
        centerTitle: true,
        backgroundColor: secondary,
        elevation: 0,
        title: Text(title),
      );
}