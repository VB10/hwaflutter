import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpHelloView extends StatefulWidget {
  @override
  _HttpHelloViewState createState() => _HttpHelloViewState();
}

class _HttpHelloViewState extends State<HttpHelloView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Future getApiJohnName() async {
    return (await http
            .get("https://hwasampleapi.firebaseio.com/api/books/0/author.json"))
        .body;

    // setState(() {
    //   this.isHaveData = !isHaveData;
    //   this.data = data;
    // });
  }

  @override
  Widget build(BuildContext context) {
    // var columncenter = Center(
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: <Widget>[
    //             isHaveData ? Text(this.data) : CircularProgressIndicator(),
    //             RaisedButton(
    //               child: Text("Send Request"),
    //               onPressed: () async {
    //                 await getApiJohnName();
    //               },
    //             )
    //           ],
    //         ),
    //       );
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: getApiJohnName(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData)
                return Text(json.decode(snapshot.data));
              else
                Text("You have error.Look at api.");
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else
              return Text("You have error.Are you sure api ?");
          },
        ),
      ),
    );
  }
}
