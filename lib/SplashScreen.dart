import 'package:aplikasi/RegisterScreen.dart';
import 'package:aplikasi/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // buat initState untuk membaca local storage / data yg diinputkan user
  @override
  void initState() {
    super.initState();
    // membuat durasi waktu tampilan splashscreen nya
    Future.delayed(Duration(seconds: 3), () async {
      final SharedPreferences preferences =
          await SharedPreferences.getInstance();

      // buat parameter bisa masuk ke homeScreen dengan paramter nbi
      final String? nbi = preferences.getString('nbi');

      // buat aturan, jika nbi tidak null maka masuk ke homescreen
      // kalo null, balik lagi ke register
      if (nbi != null) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (build) {
          return HomeScreen();
        }));
      } else {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (build) {
          return RegisterScreen();
        }));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green[900],
        child: Center(
          child: Image.asset(
            'assets/img/splash.png',
            width: 400,
            height: 400,
            //scale: ,
          ),
          //Container(child: Text('PRAKTIKUM PAB 2O23'),)
        ),
      ),
    );
  }
}
