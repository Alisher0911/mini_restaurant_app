import 'package:flutter/material.dart';
import 'package:testtask/pages/description.dart';
import 'package:testtask/pages/menu.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/menu',
      routes: {
        '/menu': (context) => const Menu(),
        '/description': (context) => const Description()
      },
    );
  }
}