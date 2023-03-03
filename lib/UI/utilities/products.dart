import 'package:flutter/material.dart';
import 'package:food_app/UI/utilities/product_screen.dart';
import 'package:food_app/UI/utilities/add_products.dart';
import 'package:food_app/models/products_res.dart';
import 'package:food_app/vm/products_vm.dart';
import 'package:get/get.dart';

import 'package:provider/provider.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: FutureBuilder(
        future: Provider.of<ProductsVm>(context).getProducts(),
        

        
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
          ProductResponse res = snapshot.data;
          return ListView.builder(
            itemCount: res.products?.length,
            itemBuilder: (BuildContext context, int index) {
              final product = res.products![index];
              return GestureDetector(
                onTap: () => Get.to(ProductScreen(product: product)),
                child: Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text('${product.title}'),
                    subtitle: Text('${product.price}'),
                  ),
                ),
              );
            },
          );
        }
        
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.to(AddProducts());
         Provider.of<ProductsVm>(context).addProducts();
      },
      child: Icon(Icons.add),
      ),
    );
  }
}
