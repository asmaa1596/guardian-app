import 'package:flutter/material.dart';
import './MaterialColor.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
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
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,

        appBar: PreferredSize(
        preferredSize: Size.fromHeight(900.0),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(26.0, 30.0, 30.0, 0),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Image.asset("assets/logo.png",
                  height: 81, width: 81, alignment: Alignment.topLeft),
            ),
          iconTheme: new IconThemeData(color: createMaterialColor(Color(0xFFC4C4C4))),

          ),
        ),
      ),
      endDrawer: Drawer(
        child: Container(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.all(10.0),
            children: <Widget>[
              DrawerHeader(
                child: null,
                decoration: BoxDecoration(
                  color: Colors.white,
                  
                ),
              ),
              ListTile(
                title: Text('About Us', 
                style: TextStyle(
                  fontSize: 17.0, 
                  fontWeight: FontWeight.w600,
                  color: createMaterialColor(Color(0xFF5E5E5E)))),
                leading: new Icon(Icons.info,
                color: createMaterialColor(Color(0xFF5E5E5E))),
                onTap: () {
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new AboutUsPage()));
                },
              ),
              ListTile(
                title: Text('Feedback',
                style: TextStyle(
                  fontSize: 17.0, 
                  fontWeight: FontWeight.w600,
                  color: createMaterialColor(Color(0xFF5E5E5E)))),
                leading: new Icon(Icons.feedback,
                color: createMaterialColor(Color(0xFF5E5E5E))),
                onTap: () {
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new FeedbackPage()));
                },
              ),
              ListTile(
                title: Text('Contact Us', 
                style: TextStyle(
                  fontSize: 17.0, 
                  fontWeight: FontWeight.w600,
                  
                  color: createMaterialColor(Color(0xFF5E5E5E)))),
                leading: new Icon(Icons.chat_bubble,
                color: createMaterialColor(Color(0xFF5E5E5E))),
                onTap: () {
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new ContactUsPage()));
                },
              ),
              ListTile(
                title: Text('Settings', 
                style: TextStyle(
                  fontSize: 17.0, 
                  fontWeight: FontWeight.w600,
                  color: createMaterialColor(Color(0xFF5E5E5E)))),
                leading: new Icon(Icons.settings,
                color: createMaterialColor(Color(0xFF5E5E5E))),
                onTap: () {
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new SettingsPage()));
                },
              ),
              ListTile(
                title: Text('Log Out', 
                style: TextStyle(
                  fontSize: 17.0, 
                  fontWeight: FontWeight.w600,
                  color: createMaterialColor(Color(0xFF5E5E5E)))),
                leading: new Icon(Icons.power_settings_new,
                color: createMaterialColor(Color(0xFF5E5E5E))),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              
            ],
          ),
        color:Colors.white),
        // child: Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       const Text('This is the Drawer'),
        //       RaisedButton(
        //         onPressed: _closeEndDrawer,
        //         child: const Text('Close Drawer'),
        //       ),
        //     ],
        //   ),
        // ),
      ),
      // Disable opening the end drawer with a swipe gesture.
      endDrawerEnableOpenDragGesture: false,
      body: new Center(
        
        child: Padding(
          padding: const EdgeInsets.only(top:165.0),
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
                        text: 'Your Guradian is ready.',
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
              RaisedButton(
                onPressed: () {},
                child: const Text('Send my location to contacts',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.normal,
                        fontSize: 15.0,
                        color: Colors.white)),
                color: createMaterialColor(Color(0xFF232323)),
                elevation: 5.0,
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ],
          ),
        ),
      ),
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
    );
  }
}
