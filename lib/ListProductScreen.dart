import 'package:aplikasi/InsideProduct.dart';
import 'package:flutter/material.dart';

class ListProductScreen extends StatefulWidget {
  const ListProductScreen({Key? key}) : super(key: key);

  @override
  State<ListProductScreen> createState() => _ListProductScreenState();
}

class _ListProductScreenState extends State<ListProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "List Product",
          style: TextStyle(fontFamily: "Poppins", color: Colors.grey),
        ),
        actions: const [],
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'PRAKTIKUM PAB',
              style: TextStyle(
                backgroundColor: Colors.white,
                fontSize: 20,
                fontFamily: "Montserrat",
                height: 2.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // mengatur penataan gambarnya
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // teks praktikum taruh sini

              const SizedBox(
                height: 40,
                width: 40,
              ),
              InkWell(
                onTap: () {
                  // pindah ke halaman lain
                  Navigator.push(context, MaterialPageRoute(builder: (build) {
                    // pindah ke halaman tujuan yaitu page 3
                    return InsideProduct();
                  }));
                },
                child: Container(
                  // mengatur besar kecilnya gambar
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage("assets/img/uniqlo.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // container 2
              const SizedBox(
                height: 40,
                width: 40,
              ),
              InkWell(
                onTap: () {
                  // pindah ke halaman lain
                  Navigator.push(context, MaterialPageRoute(builder: (build) {
                    // pindah ke halaman tujuan yaitu page 3
                    return InsideProduct();
                  }));
                },
                child: Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage("assets/img/uniqlo.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              // container 3
              const SizedBox(
                height: 40,
                width: 40,
              ),
              InkWell(
                onTap: () {
                  // pindah ke halaman lain
                  Navigator.push(context, MaterialPageRoute(builder: (build) {
                    // pindah ke halaman tujuan yaitu page 3
                    return InsideProduct();
                  }));
                },
                child: Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage("assets/img/uniqlo.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              // membuat button add to cart dengan elevated button
              SizedBox(
                height: 30,
                width: 10,
              ),
              ElevatedButton(
                child: const Text("Add to cart"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ListProductScreen(), // disini bisa dignti untuk pindah ke page lainnya
                    ),
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
