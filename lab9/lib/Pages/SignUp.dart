import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/Component/ColorButton.dart';
import 'package:lab9/Component/ConnectWith.dart';
import 'package:lab9/Component/ForgetPassword.dart';
import 'package:lab9/Component/TextFiled.dart';
import 'package:lab9/Pages/Account.dart';
import 'package:lab9/Pages/Home.dart';
import 'package:lab9/Pages/SignIn.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column( 
        // mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined),color: Colors.black, onPressed: () { 
            Navigator.push(context,MaterialPageRoute(builder: (context) => const SignIn()));},),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text("Sign Up",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
          ),
          TextFiled(title: "Enter Username",),
          SizedBox(height: 15,),
          TextFiled(title: "Enter Password",),
          SizedBox(height: 15,),
          TextFiled(title: "Re-enter Password",),
          SizedBox(height: 15,),
          Center(
      child: ElevatedButton(
        onPressed: (){ Navigator.push(context,MaterialPageRoute(builder: (context) => const Account()));}, 
        child: Text("Sign Un",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold ),),
        style: ElevatedButton.styleFrom(minimumSize: Size(370, 50),primary: Color(0xffD35400),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),)),
    ),
          //ColorButton(title: "Sign In",),
          SizedBox(height: 15,),
          forgetPassword(),
          SizedBox(height: 70,),
          ConnectWith(title: "____________________________________   Or connect with"),
        
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("images/PngItem_39514 1.png",scale: 1.2,),
              
              SizedBox(width: 110,),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Image.asset("images/facebook 1.png",scale: 1.4,),
              ),
              SizedBox(width: 20,),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Image.asset("images/google-plus 1.png",scale: 1.4,),
              ),
            ],
          )
        ],
      ),
    );
  }
}