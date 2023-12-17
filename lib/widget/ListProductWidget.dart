import 'package:flutter/material.dart';

// membuat desain box scroll konten
Center listProduct({required img, required txt}) {
  return Center(
      child: Center(
    child: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: 330,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 217, 222, 148).withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 300,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(img),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 16,
                        offset: Offset(0, 0),
                        spreadRadius: -6,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 230,
                  height: 42,
                  decoration: BoxDecoration(
                    color: Color(0xfffFFFFFF),
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 16,
                        offset: Offset(0, 0),
                        spreadRadius: -6,
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Buy',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Text(
                  txt,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  ));
}
