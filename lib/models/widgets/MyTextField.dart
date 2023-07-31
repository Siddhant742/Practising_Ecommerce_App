import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  String hintText;
  bool obsecureText;
  TextEditingController Controller;
  MyTextField({required this.hintText, required this.Controller, required this.obsecureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: Controller,
      obscureText: obsecureText,
      decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(
              color: Colors.white
          )),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color:  Colors.grey.shade400)
          ),
          fillColor: Colors.grey.shade200,
          filled: true
      ),
    );
  }
}
