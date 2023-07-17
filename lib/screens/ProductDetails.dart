import 'package:flutter/material.dart';
import 'package:practice_ecommerce/controller/Product_Provider.dart';
import 'package:provider/provider.dart';

import '../models/Product_Model.dart';

class ProductDetails extends StatelessWidget {
  int Index;
  ProductDetails(this.Index, {super.key});

  @override
  Widget build(BuildContext context) {
    Product product = Provider.of<ProductProvider>(context).products[Index];
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
        backgroundColor: Color(0xFFC75E83),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(product.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
            SizedBox(height: 20,),
            Image(image: product.image! ,
            fit: BoxFit.scaleDown,),
            SizedBox(height: 20,),
            Text('Price: \$' + product.price.toString(),
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500
            ),),
            Text('\nCategory: ' + product.category.toString().toUpperCase(),
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500
              ),),
            Text('\nDescription: ' + product.description.toString(),
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500
              ),),
          ],
        ),
      ),
    );
  }
}
