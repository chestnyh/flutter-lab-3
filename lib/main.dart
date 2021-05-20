import 'package:flutter/material.dart';
import 'package:flutter_application/provider/cart_provider.dart';
import 'package:flutter_application/provider/product_provider.dart';
import 'package:provider/provider.dart';

import 'screen/home_screen.dart';
import 'theme/theme.dart';

// 1) Побудувати нетривіальне дерево віджетів
// 2) Продемонструвати використання класу ChangeNotifier
// 3) Побудувати Модель стану, до якої будуть здійснюватись звернення
// 4) Продемонструвати доступ до моделі:
//   4.1) Через Consumer
//   4.2) Через Provider.of()
// 5) Декомпозиція додатку на Stateful та Stateless віджети
// 6) Реалізувати зміни стану
//   6.1) Приклад: при натисканні на кнопку
// 7) Продемонструвати підхід "прокидання стану нагору" (lifting state up)
//   7.1) Приклад: корзина інтернет магазину змінює свій стан (додає продукт) при натисканні на кнопку "Купити" на головному віджеті

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
