import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application/dummy_data/product_list_json.dart';
import 'package:flutter_application/model/product.dart';

class ProductProvider extends ChangeNotifier {
  List<Product> products;

  void loadProductsFromJsonString() {
    products = <Product>[];
    var productJsonList = jsonDecode(productListJson);
    for (var productJson in productJsonList) {
      products.add(Product.fromJson(productJson));
    }
  }
}
