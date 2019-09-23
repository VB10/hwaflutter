import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hwatutorial/views/hero/hero_detail_view.dart';

class HeroView extends StatefulWidget {
  @override
  _HeroViewState createState() => _HeroViewState();
}

class _HeroViewState extends State<HeroView> {
  int selectedValue;
  GlobalKey<ScaffoldState> key = GlobalKey(debugLabel: "scaffoldKey");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HeroDetailView()));
                    },
                    child: Text("Welcome"))),
          ),
          Expanded(
            child: Container(
              child: Card(
                child: DropdownButton<int>(
                  hint: Text("Selected the your country money"),
                  onChanged: (val) {
                    setState(() {
                      selectedValue = val;
                    });
                  },
                  value: selectedValue,
                  items: [
                    DropdownMenuItem(
                      child: Text("TR"),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text("EUR"),
                      value: 6,
                    ),
                    DropdownMenuItem(
                      child: Text("US"),
                      value: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Hero(tag: "hero1", child: Icon(Icons.traffic)),
                RaisedButton(
                  onPressed: () {
                    key.currentState.showBottomSheet((context) => Container(
                          height: 100,
                          color: Colors.red,
                          child: CupertinoPicker(
                            onSelectedItemChanged: (val) {
                              Navigator.of(context).pop();
                            },
                            itemExtent: 35,
                            children: <Widget>[
                              Text("1"),
                              Text("2"),
                              Text("3"),
                            ],
                          ),
                        ));
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
