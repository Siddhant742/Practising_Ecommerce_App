import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/SlidingBoxWidget.dart';

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
            shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index){
            return Container(

              decoration: const BoxDecoration(
                color: Colors.deepOrange,
              ),
            );
          })
        ],
      )),
    );
  }
}

