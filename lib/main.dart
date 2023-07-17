import 'package:flutter/material.dart';
import 'package:practice_ecommerce/controller/Product_Provider.dart';
import 'package:practice_ecommerce/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ProductProvider() ,
      child: MaterialApp(
        title: 'OnlineStore',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            ),
        home: HomeScreen(),
      ),
    );
  }
}

