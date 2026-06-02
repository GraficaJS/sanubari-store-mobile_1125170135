import 'package:dio/dio.dart';

class ProductService {

  final Dio dio = Dio();

  Future<List<dynamic>> getProducts()
  async {

    final response =
        await dio.get(
      "http://10.20.10.32:8080/api/products",
    );

    return response.data;
  }
}
