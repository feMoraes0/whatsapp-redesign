import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    this._tabController = TabController(
      initialIndex: 0,
      length: 4,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          SafeArea(
            child: Container(),
          ),
          Container(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          labelColor: theme.primaryColor,
          unselectedLabelColor: Colors.black87,
          labelPadding: const EdgeInsets.only(top: 10.0),
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.message, size: 30.0,),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: Tab(
                icon: Icon(Icons.search, size: 30.0,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Tab(
                icon: Icon(Icons.photo_camera, size: 30.0,),
              ),
            ),
            Tab(
              icon: Icon(Icons.person, size: 30.0,),
            ),
          ],
        ),
        shape: CircularNotchedRectangle(),
        notchMargin: 12.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, size: 33.0),
        backgroundColor: theme.primaryColor,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
