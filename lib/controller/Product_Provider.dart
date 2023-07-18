import 'package:flutter/cupertino.dart';
import 'package:practice_ecommerce/models/Product_Model.dart';
import 'package:practice_ecommerce/services/API_Service.dart';

class ProductProvider with ChangeNotifier{
List<Product>products = [];
fetchProduct() async {
  products = await ApiService.fetch();
  ApiService.fetch().then((List<Product> products) {
    // Data fetched successfully
    print('Data fetched: ${products.length} products');
  }).catchError((error) {
    // Error occurred while fetching data
    print('Error fetching data: $error');
  });
  notifyListeners();

}
List<Product> searchProduct(String searchQuery){
  List<Product> filteredProducts = products.where((element) => element.title.toUpperCase().contains(searchQuery.toUpperCase())).toList();
  return filteredProducts;
}

}