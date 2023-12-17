import 'package:aplikasi/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController namaController = TextEditingController();
  TextEditingController nbiController = TextEditingController();
  TextEditingController kelasController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController sosmedController = TextEditingController();

  var hintText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/img/brain.jpeg',
                scale: 6,
              ),
              Center(
                child: Text(
                  "WELCOME",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Praktikum PAB 2023",
                  style: TextStyle(fontSize: 15, fontFamily: 'Poppins'),
                ),
              ),
              Container(
                height: 20,
              ),
              // field text

              textfieldcustom(
                  'Nama', namaController, "Masukkan Nama Praktikum Anda"),
              textfieldcustom(
                  'NBI', nbiController, "Masukkan NBI Praktikum Anda"),
              textfieldcustom(
                  'Kelas', kelasController, "Masukkan Kelas Praktikum Anda"),
              textfieldcustom(
                  'Alamat', alamatController, "Masukkan Alamat Anda"),
              textfieldcustom(
                  'Akun Sosmed', sosmedController, "Masukkan Sosmed Anda"),
              Padding(
                padding: const EdgeInsets.only(left: 95, right: 95, top: 20),
                child: ElevatedButton(
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      final SharedPreferences preferences =
                          await SharedPreferences.getInstance();
                      await preferences.setString('nama', namaController.text);
                      await preferences.setString('nbi', nbiController.text);
                      await preferences.setString(
                          'kelas', kelasController.text);
                      await preferences.setString(
                          'alamat', alamatController.text);
                      await preferences.setString(
                          'sosmed', sosmedController.text);

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (build) {
                            return HomeScreen();
                          },
                        ),
                      );
                    }
                  },
                  child: Center(
                    child: Text(
                      "Daftar",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding textfieldcustom(
      String ttl, TextEditingController ctrl, String hintText) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          ttl, // untuk teks yang berada diatas field
          style: TextStyle(fontSize: 12),
        ),
        SizedBox(
          height: 7,
        ),
        Container(
          width: 300,
          height: 50,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: TextFormField(
            controller: ctrl,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Input tidak boleh kosong!';
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  width: 1.0,
                  color: Colors.grey[900]!,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
