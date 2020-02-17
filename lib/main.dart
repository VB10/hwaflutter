import 'package:flutter/material.dart';
import 'package:hwatutorial/core/preferences/shared_manager.dart';

import 'core/theme.dart';
import 'custom_stepper/custom_stepper.dart';
import 'httpHello.dart';
import 'shadow.dart';
import 'views/collapse_view.dart';
import 'views/file_download_view.dart';
import 'views/firebase_view.dart';
import 'views/flutter_state_view.dart';
import 'views/hero/hero_view.dart';
import 'views/html_view.dart';
import 'views/json_placeholder_view.dart';
import 'views/page_view.dart';
import 'views/preferences/shared_view.dart';
import 'views/routing/detail_view.dart';
import 'views/routing/home_view.dart';
import 'views/sliver_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedManager.instance.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: "/stapper",
      theme: myTheme,
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
        "/routehome": (context) => HomeView(),
        "/routedetail": (context) => DetailView(),
        "/hero": (context) => HeroView(),
        "/shared": (context) => SharedView(),
        "/advanced": (context) => AdvanceStateView(),
        "/stapper": (context) => CustomStepper()
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
