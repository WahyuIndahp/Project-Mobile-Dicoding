import 'package:flutter/material.dart';
import 'package:project_dicoding/Pages/homepage.dart';
import 'package:project_dicoding/Pages/menupaket.dart';
import 'package:project_dicoding/Pages/menupulsa.dart';
import 'package:project_dicoding/Pages/menutoken.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: {
      '/home': (context) => HomePage(),
      '/pulsa': (context) => MenuPulsa(),
      '/paket': (context) => MenuPaket(),
      '/token': (context) => MenuToken(),
    },
  ));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
    );
  }
}
