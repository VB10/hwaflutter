import 'package:flutter/material.dart';

class HeroDetailView extends StatelessWidget {
  const HeroDetailView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Hero(tag: "hero1", child: Material(child: Text("Welcome"))),
      ),
    );
  }
}
