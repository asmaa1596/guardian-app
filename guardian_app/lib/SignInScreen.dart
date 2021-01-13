
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import './Home.dart';
import 'Animation/FadeAnimation.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment:MainAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  FadeAnimation(1.2, Text("Sign In", style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),)),
                  SizedBox(height: 20,),
                ],
              ),
              Column(
                children: <Widget>[
                  Padding( padding: EdgeInsets.only(top:30.0)),
        SignInButton(
            Buttons.Google,
            onPressed: () {},
            text: "Sign In with Google"
        ),
        Padding( padding: EdgeInsets.only(top:40.0)),
        new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
            Divider(
            thickness: 2.0,
            color:Colors.grey[500]
        ),
        Padding( padding: EdgeInsets.only(top:40.0)),
                  FadeAnimation(1.3, makeInput(label: "Email")),
                  FadeAnimation(1.4, makeInput(label: "Password", obscureText: true)),
                ],
              ),
              FadeAnimation(1.5, Container(
                padding: EdgeInsets.only(top: 3, left: 3),
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
                        builder: (context) => Home()
                    ));
                  },
                  color: Colors.amber,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Text("Sign in", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,

                  ),),
                ),
              )),
              FadeAnimation(1.6, Row(
                mainAxisAlignment: MainAxisAlignment.center,

              )),
            ],
          ),
        ]),

      ),
    ));
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





