import 'package:flutter/material.dart';
import 'package:guardian_app/signInSignUp.dart';
import './MaterialColor.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(
      seconds: 3
    ),(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => SignInSignUp(),
      ),
      );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,

      children: <Widget>[
        Container(
            height:double.infinity,
            decoration:BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover ,
                image:
                  AssetImage('assets/splash-bg.jpg'))
            ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child:Image.asset('assets/splash-sc-logo.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  Text(
                        'GUARDIAN',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                            fontSize: 45),
                      )
                ],
              )),
            ),
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                            createMaterialColor(Color(0xFFFBBB00)))),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      'Always by your side.',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18.0,
                          color: Colors.white),
                    )
                  ],
                ))
          ],
        )
      ],
    ));
  }
}
