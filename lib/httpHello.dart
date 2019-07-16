import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:hwatutorial/model/post.dart';

class HttpHelloView extends StatefulWidget {
  final AsyncMemoizer _memoizer = AsyncMemoizer();

  @override
  _HttpHelloViewState createState() => _HttpHelloViewState();
}

class _HttpHelloViewState extends State<HttpHelloView> {
  String data;
  int i = 0;

  @override
  void initState() {
    super.initState();
    data = "asdasd";
  }

  getApiJohnName() {
    return this.widget._memoizer.runOnce(() async {
      var x = await http
          .get("https://hwasampleapi.firebaseio.com/api/books/0/author.json");
      return x.body;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FutureBuilder(
              future: getApiJohnName(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData)
                    return Text("");
                  else
                    Text("You have error.Look at api.");
                } else if (snapshot.connectionState ==
                    ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else
                  return Text("You have error.Are you sure api ?");
              },
            ),
            RaisedButton(
              child: Text(this.data),
              onPressed: () {
                setState(() {
                  i+=1;
                  data = "veli $i";
                });
              },
            )
          ],
        ),
      ),
    );
  }

  AsyncMemoizer() {}
}
