import 'package:flutter/material.dart';

class WorkView extends StatefulWidget {
  @override
  _WorkViewState createState() => _WorkViewState();
}

class _WorkViewState extends State<WorkView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          PopupMenuButton<vb>(
            onSelected: (item) {},
            itemBuilder: (context) => [
              PopupMenuItem<vb>(
                value: vb.ok,
                child: Text('Working a lot harder'),
              ),
              PopupMenuItem<vb>(
                value: vb.fal,
                child: Text('Working a lot harder'),
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: DataTable(
              headingRowHeight: 100,
              sortColumnIndex: 0,
              dataRowHeight: 50,
              onSelectAll: (val) {
                print("oke2");
              },
              sortAscending: true,
              rows: [
                DataRow(
                  onSelectChanged: (val) {},
                  cells: [
                    DataCell(Text("1"), onTap: () {}),
                    DataCell(Text("2"), onTap: () {}),
                  ],
                ),
                DataRow(onSelectChanged: (val) {}, cells: [
                  DataCell(Text("3"), onTap: () {}),
                  DataCell(Text("4"), onTap: () {}),
                ]),
                DataRow(selected: true, onSelectChanged: (val) {}, cells: [
                  DataCell(Text("5"), onTap: () {}),
                  DataCell(Text("6"), onTap: () {}),
                ]),
              ],
              columns: [
                DataColumn(
                    numeric: false,
                    label: Text("ok"),
                    onSort: (index, val) {
                      print("$index - $val");
                    }),
                DataColumn(numeric: false, label: Text("ok2")),
              ],
            ),
          ),
          MaterialBanner(
            content: Text("content"),
            actions: <Widget>[
              Icon(Icons.radio),
              Icon(Icons.adb),
              Icon(Icons.android)
            ],
            forceActionsBelow: false,
            backgroundColor: Colors.red,
            contentTextStyle: TextStyle(fontSize: 35),
            leading: Icon(Icons.flag),
          ),
          Container(
            height: 100,
            child: SingleChildScrollView(
              child: Wrap(
                children: <Widget>[
                  Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.grey.shade800,
                      child: Text('AB'),
                    ),
                    onDeleted: () {},
                    elevation: 5,
                    label: Text('Aaron Burr'),
                  ),
                  ChoiceChip(
                    label: Text("data"),
                    selected: true,
                    pressElevation: 10,
                  ),
                  ActionChip(
                    label: Text("act'on"),
                    onPressed: () {},
                  ),
                  FilterChip(
                    label: Text("Filter"),
                    onSelected: (val) {},
                  ),
                  InputChip(
                    label: Text("Input"),
                    onPressed: () {},
                    selected: true,
                    clipBehavior: Clip.hardEdge,
                  ),
                  RawChip(
                    label: Text("Label"),
                    selected: false,
                  ),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.grey.shade800,
                      child: Text('AB'),
                    ),
                    label: Text('Aaron Burr'),
                  ),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.grey.shade800,
                      child: Text('AB'),
                    ),
                    label: Text('Aaron Burr'),
                  ),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.grey.shade800,
                      child: Text('AB'),
                    ),
                    label: Text('Aaron Burr'),
                  ),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.grey.shade800,
                      child: Text('AB'),
                    ),
                    label: Text('Aaron Burr'),
                  ),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.grey.shade800,
                      child: Text('AB'),
                    ),
                    label: Text('Aaron Burr'),
                  ),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.grey.shade800,
                      child: Text('AB'),
                    ),
                    label: Text('Aaron Burr'),
                  ),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.grey.shade800,
                      child: Text('AB'),
                    ),
                    label: Text('Aaron Burr'),
                  ),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.grey.shade800,
                      child: Text('AB'),
                    ),
                    label: Text('Aaron Burr'),
                  ),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.grey.shade800,
                      child: Text('AB'),
                    ),
                    label: Text('Aaron Burr'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

enum vb { ok, fal }
