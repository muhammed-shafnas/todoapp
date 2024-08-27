import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todo/functions/db_function.dart';
import 'package:todo/home.dart';
import 'login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    movetonextscreen();
  }

  void movetonextscreen() async {
    await Future.delayed(const Duration(seconds: 3));
    var result = await getBoolData();
    if (result == true) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginTodo()));
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue, Colors.blueGrey])),
      child: Center(
        child: Image.asset('assets/logonew.png'),
      ),
    ));
  }
}
