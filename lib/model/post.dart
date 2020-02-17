import 'package:hwatutorial/core/base/baseModel.dart';

class PostData extends BaseModel {
  int userId;
  int id;
  String title;
  String body;

  PostData({this.userId, this.id, this.title, this.body});

  PostData.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    return data;
  }

  @override
  fromJson(Map<String, Object> json) {
    return PostData.fromJson(json);
  }
}
