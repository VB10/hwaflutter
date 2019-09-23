import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'advanced/card_widget.dart';

class AdvanceStateView extends StatefulWidget {
  @override
  _AdvanceStateViewState createState() => _AdvanceStateViewState();
}

class ColorBase {
  Color color;

  ColorBase({this.color});
}

class _AdvanceStateViewState extends State<AdvanceStateView> {
  int selectedIndex = 0;
  Color selectedColor = Colors.white24;
  List<ColorBase> colors = [];

  Future getApiJohnName() async {
    return (await http
            .get("https://hwasampleapi.firebaseio.com/api/books/0/author.json"))
        .body;
  }

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 15; i++) {
      colors.add(ColorBase(color: Colors.white24));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: getApiJohnName(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            if (snapshot.hasData) {
              return body;
            } else {
              return Center(
                child: Text("Data not found"),
              );
            }
            break;
          default:
            return Center(
              child: CircularProgressIndicator(),
            );
        }
      },
    ));
  }

  Widget get body => ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ColorCardWidget(
            onChanged: (color) {
              print(colors[index - 1].color);
              colors[index].color = color;
              
            },
          );
        },
      );
}
