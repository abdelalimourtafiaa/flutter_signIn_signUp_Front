
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:pfe_project/login.dart';
import 'package:pfe_project/utils.dart';

class regestre extends StatelessWidget {

  void SignUp(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Login()),
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
              const SizedBox(height: 20),
              // title of regestre
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: SingleChildScrollView(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Welcome To\nOUR APP...",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          fontFamily: 'Play',
                        ),
                      ),

                           Container(
                            margin: EdgeInsets.only(left: 55),
                          child: Image.asset("images/eclipses.png",



                          ),
                        ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Hello",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        fontFamily: 'lato',
                      ),
                    ),
                  ],
                ),
              ),
                 //inpute Full name
              const SizedBox(height: 25),

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
                      borderSide: BorderSide(color: Colors.grey.shade400),),
                    fillColor: Colors.grey.shade200,
                    filled: true ,
                    hintText: "FullName",
                    hintStyle: TextStyle( color: Colors.grey.shade500,

                    ),


                  ),),
              ),
              const SizedBox(height: 25),
              //inpute email
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
                      borderSide: BorderSide(color: Colors.grey.shade400),),
                    fillColor: Colors.grey.shade200,
                    filled: true ,
                    hintText: "Email",
                    hintStyle: TextStyle( color: Colors.grey.shade500,

                    ),


                  ),),
              ),
              //Password innput
              const SizedBox(height: 25),
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
                      borderSide: BorderSide(color: Colors.grey.shade400),),
                    fillColor: Colors.grey.shade200,
                    filled: true ,
                    hintText: "Password",
                    hintStyle: TextStyle( color: Colors.grey.shade500,

                    ),
                  ),
                  obscureText: true,
                ),
              ),

              //Phone number inpute

              const SizedBox(height: 25),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  keyboardType: TextInputType.number,
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
                    hintText: "Phone Number",
                    hintStyle: TextStyle( color: Colors.grey.shade500,

                    ),


                  ),),
              ),

              // Sign up Button
              SizedBox(height: 30,),

              GestureDetector(
                onTap:()=> SignUp(context) ,

                child: Container(
                  padding: EdgeInsets.all(25),
                  margin: EdgeInsets.symmetric(horizontal: 70),
                  decoration: BoxDecoration(
                      color: Color(0xff031468),
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: Center(
                    child: Text("SIGN UP",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,

                      ),
                    ),
                  ),
                ),
              ),

              // Text buttom
              SizedBox(height: 26,),
              // text
              GestureDetector(
                onTap: ()=> SignUp(context),
                child: RichText(
                  text: TextSpan(
                    text: "Already have an account ?",
                    style: TextStyle(
                      color: Color(0xff706E6E),
                      fontSize: 14,
                    ),
                    children: [
                      TextSpan(
                        text: "Login",
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

              SizedBox(height: 26,),


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




