import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Function OnTap;
  const MyButton({super.key,required this.text, required this.OnTap});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){OnTap;},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width*0.4, vertical: MediaQuery.sizeOf(context).width*0.04),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.black,
        ),

          child: Text(text,
          style: TextStyle(color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold),),
      ),
    );
  }
}
