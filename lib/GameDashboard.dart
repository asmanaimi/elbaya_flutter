import 'package:elbaya_flutter/first.dart';
import 'package:flutter/widgets.dart';
import 'package:elbaya_flutter/second.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'Games/MGame/memory.dart';
import 'Games/QGame/Quiz.dart';
//import 'package:fluttertourism/views/chatrooms.dart';
List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  StaggeredTile.extent(3, 150.0),
  StaggeredTile.extent(3, 150.0),
  
 // StaggeredTile.extent(1, 150.0),
  //StaggeredTile.extent(1, 150.0),
  //StaggeredTile.extent(2, 150.0),
];

List<Widget> _tiles = const <Widget>[
 // const MyItems(Icons.shop, "Text1 Here", 0xff42a5f5, "/first"),

const _Example02Tile(Colors.yellowAccent,Icons.gamepad,"/quiz"),
   
  
const _Example02Tile(Colors.purple, Icons.memory,"/memory"),


  //const _Example01Tile(Colors.indigo, Icons.airline_seat_flat,"/second"),
  //const _Example01Tile(Colors.red, Icons.bluetooth,"/first"),
 // const _Example01Tile(Colors.blue, Icons.battery_alert,"/second"),
  //const _Example01Tile(Colors.yellowAccent, Icons.desktop_windows,"/first"),
  
];

class Example02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: StaggeredGridView.count(
              crossAxisCount: 6,
              staggeredTiles: _staggeredTiles,
              children: _tiles,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              padding: const EdgeInsets.all(4.0),
            )));
  }
}

class _Example02Tile extends StatelessWidget {
  const _Example02Tile(this.backgroundColor, this.iconData,this.routesName);
final String routesName;
  final Color backgroundColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: InkWell(
        onTap: () async{
           Navigator.pushNamed(context, routesName);
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(
              iconData,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}


void main() => runApp(MyGames());

class MyGames extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent[400],
          title: Text(
            'El Baya',
            style: TextStyle(fontSize: 30),
          ),
        ),
        
          body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/baya.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child:Example02(),
          ),
      ),
      ),
    //  initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
       // '/': (context) => Example01(),
        '/first': (context) => First(),
        '/second':(context)=>Second(),
        '/memory':(context)=>MyMemory(),
        '/quiz':(context)=>QuizApp(),
       
      },
    );
  }
}