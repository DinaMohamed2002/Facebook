import 'package:facebook/home_screen.dart';
import 'package:facebook/login_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale("en"),
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login':(context) => LoginScreen(),
        'home':(context) => HomeScreen(),
      },
    );
  }
}