import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:pfe_project/regestre.dart';
import 'package:pfe_project/utils.dart';

class Login extends StatelessWidget {

  // controllers
  final emailcontroller=TextEditingController();
  final passwordcontroller=TextEditingController();

  // sign in buttom function
  void SignIn(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => regestre()),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 36),
              Container(
                child: Image(image: AssetImage("images/Group.png",),
                ),
              ),
              // text welcome
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Welcome \n Back...",
                        textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),


              const SizedBox(height: 25),
           //inpute email
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(color: Colors.grey.shade400),),
                  fillColor: Colors.grey.shade200,
                  filled: true ,
                  hintText: "Email",
                    hintStyle: TextStyle( color: Colors.grey.shade500,

                    ),


                ),),
              ),
              const SizedBox(height: 20),

              //"inpute password"
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Colors.grey.shade400),

                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true ,
                    hintText: "Password",
                    hintStyle: TextStyle( color: Colors.grey.shade500,

                    ),
                ),
                  obscureText: true,
                ),
              ),

              SizedBox(height: 20,),

              //forget password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'forgot password',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30,),

              //sing in Buttom


                 Container(
                padding: EdgeInsets.all(25),
                margin: EdgeInsets.symmetric(horizontal: 70),
                decoration: BoxDecoration(
                  color: Color(0xff031468),
                  borderRadius: BorderRadius.circular(40)
                ),
                child: Center(
                  child: Text("SIGN IN",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,

                    ),
                  ),
                ),
              ),

             SizedBox(height: 36,),
             // text
              GestureDetector(
                onTap:()=> SignIn(context) ,
                child: RichText(
                  text: TextSpan(
                    text: "Don’t have account ?",
                    style: TextStyle(
                      color: Color(0xff706E6E),
                      fontSize: 14,
                    ),
                    children: [
                   TextSpan(
                  text: "Create account",
                      style: TextStyle(
                        color: Color(0xff5215FE),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                   ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 70,),
              Container(
                margin: EdgeInsets.only(left: 310,bottom: 0,top: 8,
                    right: 0),
                child: Image.asset("images/Ellipse Buttom.png"),

              ),

            ],
          ),
        ),
      ),

    );
  }
}