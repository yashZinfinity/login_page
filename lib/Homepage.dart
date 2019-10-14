import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "HomePage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return 
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child:Scaffold(
      appBar: AppBar(title: Text("Zinfinity",style: TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.bold)),
      backgroundColor: Colors.blue,
      bottom: TabBar(
        tabs: [
          Tab(icon: Icon(Icons.directions_car)),
          Tab(icon: Icon(Icons.directions_transit)),
          Tab(icon: Icon(Icons.directions_bike)),
          Tab(icon: Icon(Icons.directions_walk)),
        ],
      ),
    ),
      body: 
       Center(
         child:TabBarView(
            children: [
               Icon(Icons.directions_car),
               Center(child: Text('My Page!')),
               Image.asset(
                      "assests/Images/2.png",
                    height: 60.0,
                    width: 50.0,
                      colorBlendMode: BlendMode.lighten, ),
               Icon(Icons.directions_walk),
            ],
          ),),
      drawer: Drawer(
        child: ListView(
          //padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue
              ),
              
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
               // Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                //Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      
    )
      )
    );
  }
}

