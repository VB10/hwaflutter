import 'package:flutter/material.dart';

class PopupChipView extends StatefulWidget {
  @override
  _PopupChipViewState createState() => _PopupChipViewState();
}

class _PopupChipViewState extends State<PopupChipView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          PopupMenuButton<Cars>(
            elevation: 10,
            onSelected: (car) {},
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("BWM"),
                value: Cars.bmw,
              ),
              PopupMenuItem(
                child: Text("Ford"),
                value: Cars.ford,
              ),
              PopupMenuItem(
                child: Text("Toyota"),
                value: Cars.bmw,
              ),
            ],
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 200,
            
            color: Colors.blueAccent,
            child: Wrap(
              spacing: 10,
              alignment: WrapAlignment.center,
              children: <Widget>[
                Chip(
                  label: Text("Basic Chip"),
                  deleteIcon: Icon(Icons.radio),
                  onDeleted: () {},
                  avatar: CircleAvatar(
                    child: Text("#"),
                  ),
                ),
                InputChip(
                  label: Text("Input Text"),
                  selected: true,
                  showCheckmark: true,
                  onPressed: () {},
                ),
                ChoiceChip(
                  label: Text("Choice"),
                  onSelected: (val){},
                  selected: true,
                ),
                 ChoiceChip(
                  label: Text("Choice"),
                  onSelected: (val){},
                  selected: false,
                ),
                 ChoiceChip(
                  label: Text("Choice"),
                  onSelected: (val){},
                  selected: false,
                ),
                 ChoiceChip(
                  label: Text("Choice"),
                  onSelected: (val){},
                  selected: false,
                ),

                 ChoiceChip(
                  label: Text("Choice"),
                  onSelected: (val){},
                  selected: false,
                ),
                 ChoiceChip(
                  label: Text("Choice"),
                  onSelected: (val){},
                  selected: false,
                ),
                 ChoiceChip(
                  label: Text("Choice"),
                  onSelected: (val){},
                  selected: false,
                ),
                 ChoiceChip(
                  label: Text("Choice"),
                  onSelected: (val){},
                  selected: false,
                ),
                 ChoiceChip(
                  label: Text("Choice"),
                  onSelected: (val){},
                  selected: false,
                ),
                 ChoiceChip(
                  label: Text("Choice"),
                  onSelected: (val){},
                  selected: false,
                ),
                 ChoiceChip(
                  label: Text("Choice"*5),
                  onSelected: (val){},
                  selected: false,
                ), ChoiceChip(
                  label: Text("Choice"),
                  onSelected: (val){},
                  selected: false,
                ), ChoiceChip(
                  label: Text("Choice"),
                  onSelected: (val){},
                  selected: false,
                ), ChoiceChip(
                  label: Text("Choice"),
                  onSelected: (val){},
                  selected: false,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

enum Cars { bmw, ford, toyota }
