import 'package:aplikasi/SplashScreen.dart';
import 'package:flutter/material.dart';

class kunci extends StatefulWidget {
  const kunci({Key? key}) : super(key: key);

  @override
  State<kunci> createState() => _kunciState();
}

class _kunciState extends State<kunci> {
  // buat perintah untuk siste
  TextEditingController _pinController = TextEditingController();
  bool _pinError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ENTER YOUR PIN',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Please Enter Your Pin That You Have Created',
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
            SizedBox(height: 16),
            Container(
              width: 166,
              height: 166,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.lock_open,
                    color: Colors.red,
                    size: 150,
                  ),
                ],
              ),
            ),
            // Image.asset(
            //   'assets/img/gembok.png',
            //   width: 116,
            //   height: 116,
            // ),
            SizedBox(height: 10),
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: _pinError ? Colors.red : Colors.grey,
                  width: 2.0,
                ),
              ),
              child: Center(
                child: TextField(
                  controller: _pinController,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                  onChanged: (value) {
                    setState(() {
                      _pinError = false;
                    });
                  },
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            _pinError
                ? Text(
                    'PIN Tidak Boleh Kosong.',
                    style: TextStyle(color: Colors.red),
                  )
                : Container(),
            SizedBox(height: 5),
            InkWell(
              onTap: () {
                String enteredPin = _pinController.text;
                if (enteredPin.isNotEmpty) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return SplashScreen();
                    }),
                  );
                } else {
                  setState(() {
                    _pinError = true;
                  });
                }
              },
              child: Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.lock_open,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
