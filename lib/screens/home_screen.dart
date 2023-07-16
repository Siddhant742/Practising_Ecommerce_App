import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_ecommerce/widgets/SlidingBoxWidget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA4EBEE),
        centerTitle: true,
        title: Text('Home'),
      ),
      body: SafeArea(child: ListView(
        children: [

          SlidingBox(size: size),
          GridView.builder(
            itemCount: 5,
            shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index){
            return Container(
              margin: EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Color(0xff234567),
              ),
            );
          })
        ],
      )),
    );
  }
}

