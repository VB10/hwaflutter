import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:hwatutorial/model/book.dart';

class FirebaseBookView extends StatefulWidget {
  FirebaseBookView({Key key}) : super(key: key);

  _FirebaseBookViewState createState() => _FirebaseBookViewState();
}

class _FirebaseBookViewState extends State<FirebaseBookView> {
  TextEditingController _bookNameTEC;
  TextEditingController _bookIDTEC;
  TextEditingController _bookAuthorTEC;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bookNameTEC = new TextEditingController();
    _bookIDTEC = new TextEditingController();
    _bookAuthorTEC = new TextEditingController();
  }

  Future<bool> _postBookData() async {
    final _book = new Book();
    _book.author = _bookAuthorTEC.text;
    _book.id = int.parse(_bookIDTEC.text);
    _book.title = _bookNameTEC.text;

    final response = await http.post(
        "https://hwasampleapi.firebaseio.com/api/books.json",
        body: json.encode(_book.toJson()));

    if (response.statusCode == 200) {
      return true;
    } else {
      print(response.body);
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextField(
                        controller: _bookNameTEC,
                        decoration: InputDecoration(labelText: "TITLE"),
                      ),
                      TextField(
                        controller: _bookIDTEC,
                        decoration: InputDecoration(labelText: "ID"),
                      ),
                      TextField(
                        controller: _bookAuthorTEC,
                        decoration: InputDecoration(labelText: "AUTHOR"),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.send,
                          color: Colors.blue,
                        ),
                        onPressed: () async {
                          final _result = await _postBookData();
                          print(_result);
                        },
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  AppBar get _appBar => AppBar(
        title: Text("Post Book View"),
      );
}
