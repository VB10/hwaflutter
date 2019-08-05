import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardListItem extends StatelessWidget {
  CardListItem({@required this.title, @required this.icons, this.onPress});

  final String title;
  final IconData icons;
  final VoidCallback onPress;

  final double _textSize = 50;



  @override
  Widget build(BuildContext context) {
    ScreenUtil.getInstance()..init(context);
    return Container(
      height: ScreenUtil.instance.setHeight(200),
      child: Card(
        child: ListTile(
          onTap: onPress,
          title: Text(
            title ?? "",
            style: TextStyle(fontSize: ScreenUtil.instance.setSp(70)),
          ),
          trailing: Icon(icons ?? Icons.warning),
        ),
      ),
    );
  }
}
