import 'package:flutter/material.dart';
import 'package:hwatutorial/httpHello.dart';
import 'package:hwatutorial/tabbar_view.dart';
import 'package:hwatutorial/views/json_placeholder_view.dart';
import 'package:hwatutorial/views/uibase.dart';
import 'package:hwatutorial/widgets/shadow.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: JsonPlaceHolderView(),
    );
  }
}

class TutorailOnePage extends StatelessWidget {
  const TutorailOnePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ShadowWidget(
          elevation: 30,
      child: Text(
        "Settings",
        style: const TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.w500,
            fontFamily: "Akronim",
            fontStyle: FontStyle.normal,
            fontSize: 30),
      ),
    ));
  }
}

class TutorailButtonPage extends StatelessWidget {
  const TutorailButtonPage({Key key}) : super(key: key);

  void onPress() {
    print("asdasd");
  }

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () => this.onPress(),
      child: ShadowWidget(
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.black], stops: [0.0, 0.5])),
        ),
      ),
    );
  }
}
