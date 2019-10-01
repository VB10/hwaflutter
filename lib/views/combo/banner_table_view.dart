import 'package:flutter/material.dart';

class BannerTableView extends StatefulWidget {
  @override
  _BannerTableViewState createState() => _BannerTableViewState();
}

class _BannerTableViewState extends State<BannerTableView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          MaterialBanner(
            backgroundColor: Colors.red,
            leading: Icon(Icons.flag),
            contentTextStyle: TextStyle(fontSize: 35),
            content: Text(
              "Hello Veli",
            ),
            actions: <Widget>[
              Icon(Icons.android),
              Icon(Icons.flag),
              Icon(Icons.accessibility_new)
            ],
          ),
          DataTable(
            onSelectAll: (val) {
              print("all okey");
              setState(() {
                
              });
            },
            sortAscending: false,
            sortColumnIndex: 0,

            columns: [
              DataColumn(
                  label: Text("1"),
                  numeric: true,
                  onSort: (index, change) {
                    print("$index - $change");
                  }),
              DataColumn(label: Text("2")),
              DataColumn(label: Text("3")),
              DataColumn(label: Text("4")),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text("R1")),
                DataCell(Text("R2")),
                DataCell(Text("R3")),
                DataCell(Text("R4")),
              ], onSelectChanged: (val) {}, selected: true),
              DataRow(
                cells: [
                  DataCell(Text("C1"), placeholder: true, showEditIcon: true,
                      onTap: () {
                    print("ok");
                  }),
                  DataCell(Text("C2")),
                  DataCell(Text("C3")),
                  DataCell(Text("C4")),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
