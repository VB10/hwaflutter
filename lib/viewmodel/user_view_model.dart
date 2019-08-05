import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hwatutorial/core/usercore.dart';

class UserViewModel extends BaseViewModel {
  String userName;

  UserViewModel(BuildContext context, String text, String name)
      : super(context, text, name);
  @override
  String get name => userName;

  /// [context] pass for view
  @override
  void setContext() {
    super.setContext();
  }

  void showAlertView({Widget child}) {
    showDialog(context: super.context, child: child);
  }

  @override
  void setGlobalKey(String id) {
    // TODO: implement setGlobalKey
  }
}

class UserViewModel2 implements BaseViewModel {
  String id;
  @override
  BuildContext context;

  @override
  void setContext() {
    // TODO: implement setContext
  }

  @override
  void setGlobalKey(String id) {
    id = id;
    // TODO: implement setGlobalKey
  }

  @override
  String setFullUserName(String name) {
    // TODO: implement setFullUserName
    return null;
  }

  @override
  String getFullUserName(String name) {
    // TODO: implement getFullUserName
    return null;
  }
}
