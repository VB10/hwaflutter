import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_html/flutter_html.dart';

import 'collapse_view.dart';

class HtmlView extends StatefulWidget {
  @override
  _HtmlViewState createState() => _HtmlViewState();
}

class _HtmlViewState extends State<HtmlView> {
  String _url = "https://hwasampleapi.firebaseio.com/hwa/html/s1.json";
  Future _getServiceHtmlData() async {
    return await http.get(_url);
  }

  String data = "veli";

  Future _future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _future = _getServiceHtmlData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: _future,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: <Widget>[
                  Html(
                    data: snapshot.data.body,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/pageview");
                    },
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpansionTile(
                        initiallyExpanded: false,
                        backgroundColor: Colors.blue,
                        title: Text(
                          this.data,
                          style: TextStyle(color: Colors.white),
                        ),
                        children: <Widget>[
                          ListView.builder(
                            shrinkWrap: true,
                            physics: ClampingScrollPhysics(),
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 100,
                                child: Text(snapshot.hasData.toString()),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                  )
                ],
              );
            } else {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else {
                return Text("error");
              }
            }
          },
        ),
      ),
    );
  }
}
