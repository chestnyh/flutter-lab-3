import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/screen/cart_screen.dart';

Future showInfoFlushbar(BuildContext context) async {
  await Flushbar(
    title: "Product added to cart",
    message: "Press here to open it",
    flushbarPosition: FlushbarPosition.TOP,
    onTap: (_) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CartScreen()),
      );
    },
    duration: Duration(seconds: 3),
  ).show(context);
}
