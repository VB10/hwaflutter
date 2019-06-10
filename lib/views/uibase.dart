import 'package:flutter/material.dart';

class UIBaseView extends StatefulWidget {
  @override
  _UIBaseViewState createState() => _UIBaseViewState();
}

class _UIBaseViewState extends State<UIBaseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("a"),
        leading: Icon(Icons.menu),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.access_alarms),
            onPressed: () {},
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Text("Bottom"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  height: 300,
                  color: Colors.white,
                );
              });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        decoration: BoxDecoration(
            border: Border.all(
          color: Colors.black,
          width: 8.0,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(),
            TextField(),
            TextField(),
            RaisedButton(onPressed: (){},)
          ],
        ),
      ),
    );
  }
}
