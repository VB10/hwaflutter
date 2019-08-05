import 'package:flutter/material.dart';

class PageViewHWA extends StatefulWidget {
  @override
  _PageViewHWAState createState() => _PageViewHWAState();
}

class _PageViewHWAState extends State<PageViewHWA> {
  int _selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Expanded(child: Container()),
          Expanded(child: _pageView),
          Expanded(child: _textBottomArea),
        ],
      ),
    );
  }

  Widget get _pageView => PageView.builder(
        itemCount: 4,
        onPageChanged: _onPageChanged,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.center,
              color: Colors.black,
              child: Text("$index",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  )),
            ),
          );
        },
      );

  void _onPageChanged(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  Widget get _textBottomArea => Container(
        child: _selectedPage == 3 ? Text("Selected == 3") : Text("AAA"),
      );
}
