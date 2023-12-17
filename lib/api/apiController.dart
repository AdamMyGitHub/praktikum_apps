import 'package:dio/dio.dart';

class ApiController {
  // membuta variabel future haurs menggunakan async
  // dan menggunakan [perintah list dynamic] karena akan menampilkan payload
  Future<List<dynamic>> getdatas() async {
    final Response = await Dio().get('https://jakpost.vercel.app/api/category' + '/life/food');

    final datas = Response.data['posts'];
    return datas;
  }
}
