import 'dart:convert';

import 'package:flutter_application/models/products_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<ProductsModel>> fetchProducts() async {
    final response = await http.get(
      Uri.parse("https://wantapi.com/products.php"),
    );

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final List list = jsonData["data"];

      return list.map((item) => ProductsModel.fromJson(item)).toList();
    } else {
      throw Exception("Ürünler Yüklenemedi!");
    }
  }
}
