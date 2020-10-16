import 'package:flutter/material.dart';


class ContactUsPage extends StatefulWidget {

  @override 

  _ContactUsPageState createState () => new _ContactUsPageState();

}

class _ContactUsPageState extends State<ContactUsPage> {

  @override 

  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('About Us Page'),
      ),

    );
  }
}