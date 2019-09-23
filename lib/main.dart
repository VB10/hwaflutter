import 'package:flutter/material.dart';
import 'package:hwatutorial/shadow.dart';
import 'package:hwatutorial/views/collapse_view.dart';
import 'package:hwatutorial/views/file_download_view.dart';
import 'package:hwatutorial/views/firebase_view.dart';
import 'package:hwatutorial/views/form_view.dart';
import 'package:hwatutorial/views/hero/hero_view.dart';
import 'package:hwatutorial/views/html_view.dart';
import 'package:hwatutorial/views/json_placeholder_view.dart';
import 'package:hwatutorial/views/page_view.dart';
import 'package:hwatutorial/views/preferences/shared_view.dart';
import 'package:hwatutorial/views/routing/detail_view.dart';
import 'package:hwatutorial/views/routing/home_view.dart';
import 'package:hwatutorial/views/sliver_view.dart';

import 'httpHello.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: "/shared",
      routes: {
        "/http": (context) => HttpHelloView(),
        "/sliver": (context) => SliverView(),
        "/pageview": (context) => PageViewHWA(),
        "/home": (context) => JsonPlaceHolderView(),
        "/": (context) => HomeView(),
        "/html": (context) => HtmlView(),
        "/collapse": (context) => CollapseView(),
        "/firebase": (context) => FirebaseBookView(),
        "/file": (context) => FileDownloadView(),
        "/routehome":(context) => HomeView(),
        "/routedetail":(context) => DetailView(),
        "/hero":(context) => HeroView(),
        "/shared":(context) => SharedView(),
      },
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
