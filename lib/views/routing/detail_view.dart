import 'package:flutter/material.dart';

class DetailView extends StatefulWidget {
  @override
  _DetailViewState createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ModalRoute.of(context).settings.arguments),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Chip(
            label: Text("Back"),
            onDeleted: () {
              Navigator.pop(context);
            },
            elevation: 10,
          )
        ],
      ),
    );
  }
}
