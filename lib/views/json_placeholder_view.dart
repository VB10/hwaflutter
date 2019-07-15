import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hwatutorial/model/post.dart';
import 'package:http/http.dart' as http;

class JsonPlaceHolderView extends StatefulWidget {
  @override
  _JsonPlaceHolderViewState createState() => _JsonPlaceHolderViewState();
}

class _JsonPlaceHolderViewState extends State<JsonPlaceHolderView> {
  @override
  void initState() {
    super.initState();
  }

  Future<PostData> getJsonPlaceHolderDatas() async {
    final _response =
        await http.get("https://jsonplaceholder.typicode.com/posts/1xx");
    if (_response.statusCode == 404) {
      return null;
    }
    final _mapJson = json.decode(_response.body);
    var post = PostData.fromJson(_mapJson);
    return post;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center, child: _placeHolderDatasWidget),
    );
  }

  Widget get _placeHolderDatasWidget => FutureBuilder<PostData>(
        future: getJsonPlaceHolderDatas(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListTile(
              title: Text(snapshot.data.title),
              subtitle: Text(snapshot.data.title),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      );
}
