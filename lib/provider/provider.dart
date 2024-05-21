import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/model.dart';
import 'package:http/http.dart' as http;

class ProviderProduct extends ChangeNotifier {
  bool isLoading = false;
  List<Product> _products = [];
  List<Product> get products => _products;

  Future<void> fetchProducts() async {
    isLoading = true;
    notifyListeners();

    final response =
        await http.get(Uri.parse('https://api.escuelajs.co/api/v1/products'));

    _products = ProductFromJson(response.body);
    isLoading = false;
    notifyListeners();
  }
}
