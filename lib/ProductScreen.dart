import 'package:aplikasi/ButtonNavigatonScreen.dart';
import 'package:aplikasi/HomeScreen.dart';
// import 'package:aplikasi/ListProductScreen.dart';
import 'package:flutter/material.dart';

// page 2 ganti dengan tugas aktivitas 1
class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Product Screen"),
          automaticallyImplyLeading: true,
          backgroundColor: Colors.red[700],
          leading: IconButton(
            // tapi iki sek error
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }));
            },
            //onPressed:() Navigator.pop(context, false),
          )),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                ),
                Text(
                  'UNIQLO',
                  style: TextStyle(
                    fontSize: 50,
                    fontFamily: "Montserrat",
                    height: 2.0,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // memanggil gambar di dalam assets
                Image.asset(
                  "assets/img/uniqlo.jpg",
                  height: 350,
                  width: 800,
                ),
                Container(
                  height: 20,
                ),
                // menambahkan elevated button pakai navigator push
                ElevatedButton(
                  child: const Text("Product"),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ButtonNavgationScreen(), // ganti ke page ListProductScreen
                      ),
                    );
                  },
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
