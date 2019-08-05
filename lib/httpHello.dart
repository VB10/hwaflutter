import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:hwatutorial/viewmodel/user_view_model.dart';

class HttpHelloView extends StatefulWidget {
  @override
  _HttpHelloViewState createState() => _HttpHelloViewState();
}

class _HttpHelloViewState extends State<HttpHelloView> {
  @override
  void initState() {
    super.initState();
    UserViewModel _userViewModel = UserViewModel(context, "asd", "asd");

    print(_userViewModel.getFullUserName("name"));
  }

  Future getApiJohnName() async {
    return (await http
            .get("https://hwasampleapi.firebaseio.com/api/books/0/author.json"))
        .body;
  }

  @override
  Widget build(BuildContext context) {
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
