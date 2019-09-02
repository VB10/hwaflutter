import 'package:flutter/material.dart';
import 'package:hwatutorial/core/transitions/fade_route.dart';
import 'package:hwatutorial/core/transitions/size_route.dart';

class SliverView extends StatefulWidget {
  @override
  _SliverViewState createState() => _SliverViewState();
}

class _SliverViewState extends State<SliverView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Hello"),
              centerTitle: false,
              background: Image.network(
                "https://picsum.photos/400",
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 5,
            children: <Widget>[
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((index, context) {
              return Container(
                color: Colors.red,
                height: 100,
                child: Card(child: Text("a")),
              );
            }, childCount: 10),
          )
        ],
      ),
    );
  }
}

class DetailScreen {}
