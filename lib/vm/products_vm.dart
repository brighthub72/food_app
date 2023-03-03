import 'package:flutter/material.dart';
import 'package:food_app/UI/utilities/server.dart';
import 'package:food_app/models/products_res.dart';


class ProductsVm extends ChangeNotifier {
  final server = Server();
  bool loading = false;
  final title = TextEditingController();
  final description = TextEditingController();
  final price = TextEditingController();
  



  getProducts() async {
    final result = await server.req('products');
    final res = ProductResponse.fromJson(result);
    return res;
    // print(result);
  }

  addProducts() async {
    loading = true;
    notifyListeners();
    final result = await server.req('products/add', type: 'post', body: {
      'title' : title.text,
      'description' : description.text,
      'price' : price.text,
    }
    );
    final res = ProductResponse.fromJson(result);
    print(result);
    loading = false;
    notifyListeners();
  }

   
}