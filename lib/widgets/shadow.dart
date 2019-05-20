import 'package:flutter/material.dart';

class ShadowWidget extends StatelessWidget {
  const ShadowWidget(
      {Key key, @required this.child, this.elevation, this.color})
      : super(key: key);

  final Widget child;
  final double elevation;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Material(
        shadowColor: this.color ?? Colors.black,
        elevation: this.elevation ?? 10,
        child: this.child);
  }
}
// UI = F(state)