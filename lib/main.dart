import 'package:flutter/material.dart';
import 'package:flutter_application/provider/cart_provider.dart';
import 'package:flutter_application/provider/product_provider.dart';
import 'package:provider/provider.dart';

import 'screen/home_screen.dart';
import 'theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartProvider()),
        ChangeNotifierProvider(create: (context) => ProductProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: theme,
        home: HomeScreen(),
      ),
    );
  }
}
