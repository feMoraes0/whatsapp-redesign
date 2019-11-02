import 'package:flutter/material.dart';


class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with SingleTickerProviderStateMixin {
  TabController _tabController;
  int indexPage;

  @override
  void initState() {
    this.indexPage = 1;
    this._tabController = TabController(vsync: this, length: 4, initialIndex: this.indexPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double tabWidth = (size.width / 3) - 50.0;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: this._tabController,
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 2.5,
            onTap: (active) {
              this.setState(() {
                this.indexPage = active;
              });
            },
            tabs: [
              Container(
                child: Icon(
                  Icons.camera_alt,
                  color: (this.indexPage == 0) ? Colors.white : Colors.white70,
                ),
                width: 20.0,
              ),
              Container(
                child: Center(
                  child: Text(
                    "CHATS",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: (this.indexPage == 1) ? Colors.white : Colors.white70,
                    ),
                  ),
                ),
                width: tabWidth,
                padding: const EdgeInsets.symmetric(vertical: 10.0),
              ),
              Container(
                child: Center(
                  child: Text(
                    "STATUS",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: (this.indexPage == 2) ? Colors.white : Colors.white70,
                    ),
                  ),
                ),
                width: tabWidth,
                padding: const EdgeInsets.symmetric(vertical: 10.0),
              ),
              Container(
                child: Center(
                  child: Text(
                    "CALLS",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: (this.indexPage == 3) ? Colors.white : Colors.white70,
                    ),
                  ),
                ),
                width: tabWidth,
                padding: const EdgeInsets.symmetric(vertical: 10.0),
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
          controller: _tabController,
          children: [
            Container(
              color: Colors.red,
              width: size.width,
              height: size.height,
            ),
            Container(
              color: Colors.green,
              width: size.width,
              height: size.height,
            ),
            Container(
              color: Colors.yellow,
              width: size.width,
              height: size.height,
            ),
            Container(
              color: Colors.blue,
              width: size.width,
              height: size.height,
            ),
          ],
        ),
      ),
    );
  }
}