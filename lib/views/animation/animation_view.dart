import 'dart:async';

import 'package:flutter/material.dart';

class AnimationView extends StatefulWidget {
  @override
  _AnimationViewState createState() => _AnimationViewState();
}

class _AnimationViewState extends State<AnimationView> {
  bool isAnimatedAlign = false;
  Timer timer;
  int _start = 5;
  double width = 0;

  void startTimer() {
    final deviceWidth = MediaQuery.of(context).size.width;
    final onePeriod = deviceWidth / 5;
    final oneSec = Duration(seconds: 1);

    timer = Timer.periodic(oneSec, (timer) {
      if (_start == 0) {
        showDialog(
            context: context,
            builder: (context) => Dialog(
                  child: Text("Download Completed"),
                ));
        timer.cancel();
      } else if (_start > 0) {
        setState(() {
          width += onePeriod;
        });
        _start -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: AnimatedAlign(
              duration: Duration(milliseconds: 500),
              alignment:
                  isAnimatedAlign ? Alignment.topCenter : Alignment.center,
              child: Container(
                  width: 100,
                  height: 100,
                  child: RaisedButton(
                    onPressed: () {
                      startTimer();

                      setState(() {
                        isAnimatedAlign = !isAnimatedAlign;
                      });
                    },
                  )),
            ),
          ),
          AnimatedOpacity(
            opacity: isAnimatedAlign ? 0.2 : 0.7,
            child: FlutterLogo(size: 300,),
            duration: Duration(milliseconds: 200),
          ),
          AnimatedContainer(
            duration: Duration(seconds: 1),
            width: width,
            height: 100,
            color: Colors.red,
          ),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
