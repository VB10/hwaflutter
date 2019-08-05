import 'package:flutter/cupertino.dart';

abstract class BaseViewModel {
  String _text;
  String _name;
  BuildContext context;
  void setContext() {
    this.context = context;
  }

  String getFullUserName(String name) {
    return _name + name;
  }

  void setGlobalKey(String id);

  BaseViewModel(this.context,this._text,this._name);
}
