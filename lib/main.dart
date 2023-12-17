// import 'package:aplikasi/RegisterScreen.dart';
//import 'package:aplikasi/RegisterScreen.dart';
//import 'package:aplikasi/HomeScreen.dart';
// import 'package:aplikasi/SplashScreen.dart';
import 'package:aplikasi/core.dart';
import 'package:aplikasi/kunci.dart';
// import 'package:aplikasi/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //home: HomeScreen(),
      home: kunci(),
      // kalo mau pake, arahkan spashscreen()
    );
  }
}

// splashcreen full ctrl + / dulu, kalo mau pake baru di retouch
// buka comment di aktivitas 3 bagian alamat sama sosmed