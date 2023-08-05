import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_ecommerce/controller/AuthService.dart';
import 'package:practice_ecommerce/models/widgets/MyButton.dart';
import 'package:practice_ecommerce/models/widgets/SquareTile.dart';

import '../models/widgets/MyTextField.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});


  @override
  Widget build(BuildContext context) {
    TextEditingController emailController= TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text("SignIn Screen"),
      // ),
      body: SafeArea(child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 25,),
            Center(
              child: Icon(Icons.lock,
              size: 100,),
            ),
            SizedBox(height: 45,),
            Text('Welcome back You have been missed!',
            style: TextStyle(
              color: Colors.black45
            ),),
            SizedBox(height: 20,),
            MyTextField(hintText: 'Email',
            obsecureText: false,
            Controller:emailController ,),
            SizedBox(height: 10,),
            MyTextField(hintText: 'Password',
            obsecureText: true,
            Controller: passwordController,),
            SizedBox(height: 35,),
            MyButton(text: 'Sign In',OnTap: (){},),
            SizedBox(height: 40,),
            Row(children: [
              Expanded(
                child: Divider(thickness: 0.5,
                color: Colors.grey,),
              ),
              Text('or Continue with',
              style: TextStyle(color: Colors.grey.shade700),),
              Expanded(
                child: Divider(thickness: 0.5,
                  color: Colors.grey,),
              ),
            ],
            ),
            SizedBox(height: 40,),
            SquareTile(ImagePath: 'assets/images/google.png', OnTap: () => AuthService().SignInWithGoogle(),),

          ],
        ),
      )),
    );
  }
}

