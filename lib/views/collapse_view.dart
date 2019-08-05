import 'package:flutter/material.dart';

class CollapseView extends StatefulWidget {
  @override
  _CollapseViewState createState() => _CollapseViewState();
}

class _CollapseViewState extends State<CollapseView> {
  List<String> datas;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    datas = new List<String>();
    for (var i = 0; i < 10; i++) {
      datas.add("$i");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
                  child: Card(
            color: Colors.blue,
            child: ExpansionTile(
              initiallyExpanded: false,
              title: Text(
                "Counter",
                style: TextStyle(color: Colors.white),
              ),
              children: <Widget>[
                ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: datas.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      child: Text("a"),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
