import 'package:elbaya_flutter/helper/authenticate.dart';
import 'package:elbaya_flutter/helper/helperfunctions.dart';
import 'package:elbaya_flutter/views/chatrooms.dart';
import 'package:flutter/material.dart';
import 'Dashboard.dart';


void main() {
  runApp(MylogIn());
}

class MylogIn extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MylogInState createState() => _MylogInState();
}

class _MylogInState extends State<MylogIn> {

  bool userIsLoggedIn;

  @override
  void initState() {
    getLoggedInState();
    super.initState();
  }

  getLoggedInState() async {
    await HelperFunctions.getUserLoggedInSharedPreference().then((value){
      setState(() {
        userIsLoggedIn  = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterChat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.pinkAccent[400],
        scaffoldBackgroundColor: Colors.white,
        accentColor: Colors.pinkAccent[400],
        //fontFamily: "OverpassRegular",
        //visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: userIsLoggedIn != null ?  userIsLoggedIn ? MyHome() : Authenticate()
          : Container(
        child: Center(
          child: Authenticate(),
        ),
      ),
    );
  }
}