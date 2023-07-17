import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:practice_ecommerce/models/Product_Model.dart';

class ApiService {
  static List<Product> products = [];
  static String _baseURL = "https://fakestoreapi.com/products";

  static Future<List<Product>> fetch() async {
    var response = await http.get(Uri.parse(_baseURL));
    var decoded = jsonDecode(response.body) as List<dynamic>;
    for (Map<String, dynamic> productMap in decoded) {
      Product product = Product.fromJson(productMap);
      products.add(product);
    }
    return products;
  }
}
