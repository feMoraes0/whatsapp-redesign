import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double tabWidth = (size.width / 3) - 50.0;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 2.5,
            tabs: [
              Container(
                child: Icon(Icons.camera_alt),
                width: 20.0,
              ),
              Container(
                child: Center(child: Text("CHATS", style: TextStyle(fontWeight: FontWeight.w700),),),
                width: tabWidth,
                padding: const EdgeInsets.symmetric(vertical: 13.0),
              ),
              Container(
                child: Center(child: Text("STATUS", style: TextStyle(fontWeight: FontWeight.w700),),),
                width: tabWidth,
                padding: const EdgeInsets.symmetric(vertical: 13.0),
              ),
              Container(
                child: Center(child: Text("CALLS", style: TextStyle(fontWeight: FontWeight.w700),),),
                width: tabWidth,
                padding: const EdgeInsets.symmetric(vertical: 13.0),
              ),
              
            ],
          ),
          title: Container(
            child: Row(
              children: <Widget>[Text("WhatsApp")],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Container(),
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
