// button re usable widget


import 'package:flutter/material.dart';
import 'package:swiftpay/util/color.dart';

Container btn(String label) {
  return Container(
    height: 60,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      boxShadow:const <BoxShadow>[
            BoxShadow(
                color: Colors.black54,
                blurRadius: 15.0,
                offset: Offset(0.0, 0.75)
            )
          ],
      color: primary,
    ),
    child: Text(
      label,
      style: TextStyle(
        color: accent2,
        fontSize: 16,
      ),
    ),
  );
}