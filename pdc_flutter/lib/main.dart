import 'package:flutter/material.dart';

import 'package:pdc_flutter/src/ui/home.dart';
import 'package:pdc_flutter/src/ui/ipva.dart';
import 'package:pdc_flutter/src/ui/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/ipva': (context) => IpvaPage(),
      },
    );
  }
}

