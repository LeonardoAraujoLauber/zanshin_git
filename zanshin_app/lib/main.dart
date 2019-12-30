/*clase que comienza la app */

import 'package:flutter/material.dart';
import 'package:zanshin_app/screens/karate_screen.dart';

import './screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zanshin App',
      theme: ThemeData(     //me permite unificar la estetica de la app con estas variables
        accentColor: Colors.blue,
        backgroundColor: Colors.teal,
      ),
      home: MyHomePage('Zanshin App'),
      routes: {
        KarateScreen.ruta: (ctx) => KarateScreen(),
      },
    );
  }
}

