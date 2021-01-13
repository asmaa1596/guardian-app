import 'package:flutter/material.dart';


class AboutUsPage extends StatefulWidget {

  @override 

  _AboutUsPageState createState () => new _AboutUsPageState();

}

class _AboutUsPageState extends State<AboutUsPage> {

  @override 

  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('About Us Page'),
      ),

    );
  }
}