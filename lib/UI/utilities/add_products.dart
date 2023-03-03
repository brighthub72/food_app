import 'package:flutter/material.dart';
import 'package:food_app/vm/products_vm.dart';
import 'package:provider/provider.dart';

import '../../vm/auth_vm.dart';

class AddProducts extends StatefulWidget {
  const AddProducts({Key? key}) : super(key: key);

  @override
  State<AddProducts> createState() => _AddProductsState();
}

class _AddProductsState extends State<AddProducts> {

  final formKey = GlobalKey<FormState>();

  List addprod = [
    'title',
    'description',
    'images',
    'price',
  ];

  @override
  Widget build(BuildContext context) {
    final pvm = Provider.of<ProductsVm>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add products'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value == '') {
                        return 'please enter product title';
                      }
                    },
                    controller: pvm.title,
                    decoration: InputDecoration(label: Text('Title')),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    validator: (value) {
                      if (value == '') {
                        return 'please enter product description';
                      }
                    },
                    controller: pvm.description,
                    decoration: InputDecoration(label: Text('Description')),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    validator: (value) {
                      if (value == '') {
                        return 'please enter product price';
                      }
                    },
                    controller: pvm.price,
                    decoration: InputDecoration(label: Text('Price')),
                  ),
                  SizedBox(height: 70,),
                  ElevatedButton(
                    child: pvm.loading?
                    CircularProgressIndicator.adaptive(
                      backgroundColor: Colors.white
                    ):
                    const Text('ADD'),
                    onPressed: () {
                      if (!formKey.currentState!.validate()) {
                        return;
                      }
            
                      pvm.addProducts();
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Home()),
                      // );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
