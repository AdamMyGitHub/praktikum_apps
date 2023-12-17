import 'package:aplikasi/api/apiController.dart';
import 'package:aplikasi/widget/ListProductWidget.dart';
import 'package:flutter/material.dart';

class InsideProduct extends StatefulWidget {
  const InsideProduct({Key? key}) : super(key: key);

  @override
  State<InsideProduct> createState() => _InsideProductState();
}

class _InsideProductState extends State<InsideProduct> {
  Future<List<dynamic>>? _data;

  @override
  void initState() {
    _data = ApiController().getdatas();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // buat fungsi baru agar konten scrollview nya bisa berisi konten secara otomatis
    //print('ini data $_data');
    // List product = [
    //   {"img": "assets/img/brain.jpeg", "txt": "Abir Jassem prepares food inside the kitchen of the women-run catering service “Taste of Mosul“, in Iraq's northern city of Mosul, on September 13, 2023."},
    //   {"img": "assets/img/babi.png", "txt": "gambar 2"},
    //   {"img": "assets/img/cyber.png", "txt": "gambar 3"},
    //   {"img": "assets/img/untag.jpg", "txt": "gambar 4"},
    //   {"img": "assets/img/uniqlo.jpg", "txt": "gambar 5"},
    // ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("scrollview",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            )),
      ),

      // buat isi
      backgroundColor: Colors.red,
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            FutureBuilder<List<dynamic>>(
                future: _data,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return SizedBox(
                      width: 400,
                      height: 635,
                      child: ListView.builder(
                        // masukkan panjang listview kebawah nya / muatan data konten waktu di scroll nya
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return listProduct(
                            img:
                                snapshot.data![index]['image'],
                            txt: snapshot.data![index]['headline'],
                            // img: product[index]["img"],
                            // txt: product[index]["txt"],
                          );
                        },
                      ),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    );
                  }
                }),
          ],
        ),
      ),
    );
  }
}
// bikin tampilan poduct bisa di scroll di pertemuan 2 PAB