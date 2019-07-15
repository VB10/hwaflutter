import 'package:flutter/material.dart';
import 'package:hwatutorial/shadow.dart';
import 'package:hwatutorial/widgets/list_item.dart';

class UIBaseView extends StatefulWidget {
  @override
  _UIBaseViewState createState() => _UIBaseViewState();
}

class _UIBaseViewState extends State<UIBaseView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
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
          width: 8.0,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(),
            CardListItem(
              title: "a",
              icons: Icons.accessibility,
            ),
            SizedBox(
              height: 50,
            ),
            ShadowWidget(
              elevation: 5,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CardListItem(
                  title: "a",
                  icons: Icons.accessibility,
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
