import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String ImagePath;
  Function OnTap;
   SquareTile({super.key, required this.ImagePath, required this.OnTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap(),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16)
        ),
        child: Image.asset(ImagePath,height: 50,),
      ),
    );
  }
}
