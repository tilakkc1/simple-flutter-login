import 'package:flutter/material.dart';
import 'package:smart_krishi/login_page.dart';
import 'package:smart_krishi/home_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag:(context)=>LoginPage(),
    HomePage.tag:(context)=>HomePage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Krishi',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
