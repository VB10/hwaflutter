import 'package:flutter/material.dart';
import 'package:hwatutorial/core/navigation_helper.dart';
import 'package:hwatutorial/core/transitions/rotation_route.dart';
import 'package:hwatutorial/core/transitions/size_route.dart';
import 'package:hwatutorial/core/transitions/slide_route.dart';
import 'package:hwatutorial/views/routing/detail_view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.network("https://picsum.photos/200/300"),
              Text("data"),
              RaisedButton.icon(
                icon: Icon(Icons.details),
                label: Text("Read more..."),
                onPressed: () {
                  String veli = "veli";
                  RouteSettings _routeSettings = RouteSettings(arguments: veli);
                  Navigator.push(
                      context,
                      SizeRoute(page: DetailView(),settings: _routeSettings));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
