import 'package:flutter/material.dart';
import 'package:practice_ecommerce/controller/Product_Provider.dart';
import 'package:practice_ecommerce/models/Product_Model.dart';
import 'package:provider/provider.dart';

import 'ProductDetails.dart';

class SearchProduct extends StatefulWidget {
  const SearchProduct({super.key});

  @override
  State<SearchProduct> createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {
  String searchQuery ='';
  @override
  Widget build(BuildContext context) {
    List<Product> searchedProduct = Provider.of<ProductProvider>(context).searchProduct(searchQuery);
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Products'),
        backgroundColor: Color(0xFFC75E83),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search Product'
              ),
              onChanged: (val){
                setState(() {
                  searchQuery = val;
                });
              },
            ),
            GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: Provider.of<ProductProvider>(context).searchProduct(searchQuery).length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
              // return Text(searchedProduct[index].title);
              return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails(index)));
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                  decoration: BoxDecoration(
                    // color: Color(0x38A4EBEE),
                      border: Border.all(
                          color: Color(0xFFC75E83),
                          width: 0.4
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,

                    children: [
                      Text(searchedProduct[index].title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            overflow: TextOverflow.ellipsis
                        ),),
                      const SizedBox(height: 15,),
                      Expanded(
                        child: Image(image: searchedProduct[index].image!,),
                      ),
                      const SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Text('\$${searchedProduct[index].price}',
                          style: const TextStyle(
                              fontWeight: FontWeight.w500
                          ),)],
                      )
                    ],
                  ),
                ),
              );
            },
            )
          ],
        ),
      ),
    );
  }
}
