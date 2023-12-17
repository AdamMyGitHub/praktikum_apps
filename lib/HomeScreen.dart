import 'package:aplikasi/ProductScreen.dart';
import 'package:aplikasi/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // buat variabel
  String? nama;
  String? nbi;

  void data() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    final String? _nama = preferences.getString('nama');
    final String? _nbi = preferences.getString('nbi');

    // buat setState
    setState(() {
      nama = _nama;
      nbi = _nbi;
    });
  }

  // buat agar data() muncul
  @override
  void initState() {
    super.initState();
    data();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        actions: const [],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome To",
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'Poppins',
              color: Colors.black,
              //fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 40,
            height: 10,
          ),
          Text(
            "PRAKTIKUM PAB 2023",
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Poppins',
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 40,
            height: 20,
          ),
          Text(
            "$nbi", // menggunakan $ agar data ini berasal dari data yg diinputkan di register
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Poppins',
              color: Colors.black,
              //fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset(
            "assets/img/alien.jpg",
            width: 200,
            height: 200,
          ),
          Center(
            child: Text(
              "$nama", // menggunakan $ agar data ini berasal dari data yg diinputkan di register
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Poppins',
                color: Colors.black,
                //fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 20,
          ),

          // buat button Masuk
          InkWell(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                //return HomeScreen(); // bisa masuk ke page 2
                return ProductScreen();
              }));
            },
            child: Container(
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Masuk",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          // atur jarak button masuk dengan keluar
          SizedBox(
            height: 20,
          ),
          // buat button keluar serta aturan jika ada data tersimpah bisa konek ke page 2
          InkWell(
            onTap: () async {
              final SharedPreferences preferences =
                  await SharedPreferences.getInstance();
              await preferences.remove('nbi');
              await preferences.remove('nama');

              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return SplashScreen(); // melalui splashscreen dulu
                // return RegisterScreen(); // masuk ke registerScreen
              }));
            },
            child: Container(
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Keluar",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    // membuat isi body
  }
}
