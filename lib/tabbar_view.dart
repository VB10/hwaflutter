import 'package:flutter/material.dart';
import 'package:hwatutorial/views/home.dart';

class TabbarView extends StatefulWidget {
  TabbarView({Key key}) : super(key: key);

  _TabbarViewState createState() => _TabbarViewState();
}

class _TabbarViewState extends State<TabbarView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.filter_drama),
          onPressed: () {},
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Colors.blue,
            tabs: <Widget>[
              Tab(
                child: Icon(Icons.radio),
              ),
              Tab(
                child: Icon(Icons.filter_2),
              ),
              //
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            HomeView(),
            Container(
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
