import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_ecommerce/controller/Product_Provider.dart';
import 'package:practice_ecommerce/models/Product_Model.dart';
import 'package:practice_ecommerce/screens/ProductDetails.dart';
import 'package:practice_ecommerce/screens/SearchProduct.dart';
import 'package:provider/provider.dart';
import '../models/widgets/SlidingBoxWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ProductProvider productProvider = ProductProvider();
  @override
  void initState() {
    productProvider = Provider.of<ProductProvider>(context, listen: false);
    productProvider.fetchProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFC75E83),
        title: Text('Home'),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const SearchProduct()));
          }, icon: Icon(Icons.search))
        ],
      ),
      body: SafeArea(
          child: ListView(
        children: [
          SlidingBox(size: size),
          Consumer<ProductProvider>(
            builder: (BuildContext context, provider, Widget? child) {
              return GridView.builder(
                  itemCount: context.watch<ProductProvider>().products.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 0,
                    mainAxisExtent: 206,
                  ),
                  itemBuilder: (context, index) {
                    Product product = context.watch<ProductProvider>().products[index];
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
                            Text(context
                                .watch<ProductProvider>()
                                .products[index]
                                .title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              overflow: TextOverflow.ellipsis
                            ),),
                            const SizedBox(height: 15,),
                            Expanded(
                              child: Image(image: product.image!,),
                            ),
                            const SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [Text('\$${product.price}',
                              style: const TextStyle(
                                fontWeight: FontWeight.w500
                              ),)],
                            )
                          ],
                        ),
                      ),
                    );
                  });
            },
          )
        ],
      )),
    );
  }
}
