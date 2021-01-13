import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:guardian_app/ContactUs.dart';
import './ContactUs.dart';
import 'Animation/FadeAnimation.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.cyan[50],
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.cyan[50],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.grey[800]),
        ),
      ),
      body:SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment:MainAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                   child:Align(
                     alignment:Alignment.topLeft
                     ,
                   child:RichText(text: TextSpan(
                     text: 'New \nAccount ',
                       style: TextStyle(color: Colors.grey[800],fontSize: 30,fontWeight:FontWeight.bold),
                         children: [
                           TextSpan(text: '\t \t \t \t \t \t \t  1/3',style: TextStyle(color: Colors.grey[800],fontSize: 30,fontWeight: FontWeight.bold,))
                             ]
          ),

          ),),),

// google Button

        (

           Padding( padding: EdgeInsets.only(top:40.0))),
            SignInButton(
            Buttons.Google,
            onPressed: () {},
              text: "Sign up with Google"
      ),
          Padding( padding: EdgeInsets.only(top:30.0)),
         new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Divider(
                thickness: 2.0,
                color:Colors.grey[500]
              ),
              Padding( padding: EdgeInsets.only(top:30.0)),
              Column(
                children: <Widget>[
                  FadeAnimation(1.2, makeInput(label: "Full Name")),
                  FadeAnimation(1.3, makeInput(label: "Date Of Birth", obscureText: true)),

                ],
              ),
              FadeAnimation(1.6, Container(
                padding: EdgeInsets.only(top: 2, left: 3),
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(50),
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                    )
                ),


                child:MaterialButton(

                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ContactUsPage()
                    ));
                  },
                  color: Colors.black87,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Text("Next", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color:Colors.white,
                      fontSize: 18,

                  ),),
                ),
              )),
              FadeAnimation(1.7, Row(
                mainAxisAlignment: MainAxisAlignment.center,

              )),
            ],

          )],
        ),
      ])
    ,
      )));
  }

  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(label, style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black87
        ),),
        SizedBox(height: 5,),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400])
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400])
            ),
          ),
        ),
        SizedBox(height: 30,),
      ],
    );

  }

}