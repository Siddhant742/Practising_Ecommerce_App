import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:practice_ecommerce/controller/Product_Provider.dart';
import 'package:practice_ecommerce/widgets/SlidingBoxWidget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ProductProvider productProvider = ProductProvider();
  @override
  void initState() {
    // TODO: implement initState
    productProvider = Provider.of<ProductProvider>(context, listen: false);
    var products =productProvider.fetchProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA4EBEE),
        centerTitle: true,
        title: Text('Home'),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          SlidingBox(size: size),
          Consumer(
            builder: (BuildContext context, provider, Widget? child) {
              return GridView.builder(
                  itemCount: context.watch<ProductProvider>().products.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1),
                  itemBuilder: (context, index) {
                    return Expanded(
                      child: Container(

                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color(0x38A4EBEE),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // Text(context
                            //     .watch<ProductProvider>()
                            //     .products[index]
                            //     .title),

                            Image(image: context
                                .watch<ProductProvider>()
                                .products[index]
                                .image!,
                            fit: BoxFit.scaleDown,)
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
