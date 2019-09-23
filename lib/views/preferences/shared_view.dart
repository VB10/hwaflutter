import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedView extends StatefulWidget {
  @override
  _SharedViewState createState() => _SharedViewState();
}

class _SharedViewState extends State<SharedView> {
  SharedPreferences preferences;
  String data = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocalData();
  }

  Future getLocalData() async {
    preferences = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(Colors.red, BlendMode.softLight),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SelectableText("Selammmm",),
              Icon(
                Icons.android,
                size: 100,
                color: Colors.green,
              ),
              Text(this.data),
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  setState(() {
                    data = preferences.getString("key");
                  });
                },
                child: Text("Get Shared Data"),
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  preferences.setString("key", "veli");
                },
                child: Text("Save Shared Data"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
