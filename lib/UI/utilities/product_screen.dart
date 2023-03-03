import 'package:flutter/material.dart';
import 'package:food_app/UI/utilities/style.dart';
import 'package:food_app/models/products_res.dart';

class ProductScreen extends StatefulWidget {
  ProductScreen({Key? key, required this.product}) : super(key: key);
  Products product;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.product.title}'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Column(
              children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.product.images!.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Image.network(
                        '${widget.product.images![index]}',
                        height: 240,
                      );
                    },
                  ),
                ),
                SizedBox(height: 20,),
                Text('Description\n\n${widget.product.description}', style: text17.copyWith(color: Colors.black),),
                Text('Price\n\n${widget.product.price.toString()}', style: text17.copyWith(color: Colors.black),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
