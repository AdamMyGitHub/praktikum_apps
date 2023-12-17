import 'package:aplikasi/InsideProduct.dart';
import 'package:aplikasi/ListProductScreen.dart';
import 'package:flutter/material.dart';

class ButtonNavgationScreen extends StatefulWidget {
  const ButtonNavgationScreen({Key? key}) : super(key: key);

  @override
  State<ButtonNavgationScreen> createState() => _ButtonNavgationScreenState();
}

class _ButtonNavgationScreenState extends State<ButtonNavgationScreen> {
  int _selectIndex = 0;
  List<Widget> _screenList = [ListProductScreen(), InsideProduct()];

  void pergantianScreen(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenList[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: pergantianScreen,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'chart'),
        ],
      ),
    );
  }
}
