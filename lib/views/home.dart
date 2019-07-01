import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with AutomaticKeepAliveClientMixin {
  String _data = "";
  bool _isDark;

  TextEditingController _textEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isDark = false;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: _isDark ? Colors.red : Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(_data),
            Visibility(
              visible: _isDark,
              child: Text(
                "IS DARK $_isDark ",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Center(
              child: RaisedButton(
                child: Icon(Icons.account_balance_wallet),
                onPressed: () {
                  setState(() {
                    _isDark = !_isDark;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
