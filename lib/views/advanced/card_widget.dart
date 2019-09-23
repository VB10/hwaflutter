import 'package:flutter/material.dart';

class ColorCardWidget extends StatefulWidget {
  final Function(Color color) onChanged;

  const ColorCardWidget({Key key, this.onChanged}) : super(key: key);

  @override
  _ColorCardWidgetState createState() => _ColorCardWidgetState();
}

class _ColorCardWidgetState extends State<ColorCardWidget> {
  Color color = Colors.white24;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      margin: EdgeInsets.all(10),
      child: ListTile(
        trailing: DropdownButton<Color>(
          onChanged: (color) {
            setState(() {
              this.color = color;
            });
            widget.onChanged(color);
          },
          items: [
            DropdownMenuItem(
              value: Colors.red,
              child: Text("Red"),
            ),
            DropdownMenuItem(
              value: Colors.green,
              child: Text("Green"),
            ),
            DropdownMenuItem(
              value: Colors.pink,
              child: Text("Pink"),
            ),
          ],
        ),
        title: Text("Colors changes"),
        subtitle: Text("$color"),
      ),
    );
  }
}
