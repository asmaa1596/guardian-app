import 'dart:async';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import './MaterialColor.dart';
import './AboutUs.dart';
import './Settings.dart';
import './Feedback.dart';
import './ContactUs.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // void _openEndDrawer() {
  //  _scaffoldKey.currentState.openEndDrawer();
  // }

//    void _closeEndDrawer() {
//     Navigator.of(context).pop();
//  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(900.0),
        child: Padding(
          padding: const EdgeInsets.only(top:26.0, right:60.0, bottom:30.0),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
            ),
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Image.asset("assets/logo.png",
                  height: 81, width: 81, alignment: Alignment.topLeft),

            ),
            iconTheme: IconThemeData(color: Colors.grey,size: 80),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.grey,
                ),
                onPressed: () {
                  // do something
                },
              )
            ],
          )),
        ),

      endDrawer: Container(
        child: Drawer(
          child: Container(
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: <Widget>[
                  new UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color:Colors.cyan[100]
                    ),
                    accountName:Text('user name',style: TextStyle(fontWeight: FontWeight.bold),),
                    accountEmail: Text('username10@gmail.com',style: TextStyle(fontWeight: FontWeight.bold),),
                    currentAccountPicture: new CircleAvatar(
                        backgroundColor: Colors.cyan[200],
                    ),
                  ),
                  Container(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text('About Us',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: createMaterialColor(Color(0xFF5E5E5E)))),
                      leading: new Icon(Icons.info,
                          color: createMaterialColor(Color(0xFF5E5E5E))),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    new AboutUsPage()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text('Feedback',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: createMaterialColor(Color(0xFF5E5E5E)))),
                      leading: new Icon(Icons.feedback,
                          color: createMaterialColor(Color(0xFF5E5E5E))),
                      onTap: () {
                        Navigator.pop(context);

                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    new FeedbackPage()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text('Contact Us',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: createMaterialColor(Color(0xFF5E5E5E)))),
                      leading: new Icon(Icons.chat_bubble,
                          color: createMaterialColor(Color(0xFF5E5E5E))),
                      onTap: () {
                        Navigator.pop(context);

                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    new ContactUsPage()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text('Settings',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: createMaterialColor(Color(0xFF5E5E5E)))),
                      leading: new Icon(Icons.settings,
                          color: createMaterialColor(Color(0xFF5E5E5E))),
                      onTap: () {
                        Navigator.pop(context);

                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    new SettingsPage()));
                      },
                    ),
                  ),
                  Container(
                    height: 80.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text('Log Out',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: createMaterialColor(Color(0xFFFF5959)))),
                      leading: new Icon(Icons.power_settings_new,
                          color: createMaterialColor(Color(0xFFFF5959))),
                      onTap: () {
                        // Update the state of the app
                        // ...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
              color: Colors.white),
        ),
      ),
      // Disable opening the end drawer with a swipe gesture.
      endDrawerEnableOpenDragGesture: false,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          iconSize: 35.0,
          selectedItemColor: createMaterialColor(Color(0xFF5ACFE4)),
          unselectedItemColor: createMaterialColor(Color(0xFFC4C4C4)),
          selectedFontSize: 15.0,
          backgroundColor: Colors.white,
          elevation: 50,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(
                'Home',
                style: TextStyle(
                    fontFamily: 'Montserrat', fontWeight: FontWeight.w600),
              ),
            ),
        
        BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text(
                'Profile',
                style: TextStyle(
                    fontFamily: 'Montserrat', fontWeight: FontWeight.w600),
              ),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
      body: SingleChildScrollView(
        child: new Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 140.0),
          child: Column(
            children: [
              Container(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Hi, Asmaa.\n',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w900,
                            fontSize: 30.0,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Your Guardian is ready.',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            fontSize: 17.0,
                            color: Colors.black,
                            height: 2),
                      ),
                    ],
                  ),
                ),
                margin: const EdgeInsets.all(7.0),
                width: 344.0,
                height: 123.0,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0, 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: createMaterialColor(Color(0xFFFFCE40)),
                  boxShadow: const [
                    BoxShadow(blurRadius: 2),
                  ],
                ),
              ),
              Container(
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 11.0,
                  ),
                ),
                margin: const EdgeInsets.all(10.0),
                width: 344.0,
                height: 270.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  boxShadow: const [
                    BoxShadow(blurRadius: 2),
                  ],
                ),
              ),
              new Container
                (
                  child:Row(
                      children:<Widget>[
                        Padding(padding:const EdgeInsets.only(left: 10.0)),
                         RaisedButton(
                          onPressed: () {},
                          child: const Text('Send my location',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15.0,
                                  color: Colors.white)),
                          color: createMaterialColor(Color(0xFF232323)),
                          elevation: 5.0,
                          padding: EdgeInsets.all(12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),

                          ),
                        ),
                        Padding(padding:const EdgeInsets.only(left: 30.0)),
                        RaisedButton(
                          onPressed: () {},
                          child: const Text('\t Start Recording ',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15.0,
                                  color: Colors.white)),
                          color: Colors.indigo[900],
                          elevation: 5.0,
                          padding: EdgeInsets.all(12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),

                          ),
                        ),
                      ])
              )
            ],
          ),
        ),
      ),
    ),

    );
  }
}
