import 'dart:convert';

import 'package:hwatutorial/core/base/baseModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedManager {
  SharedPreferences preferences;
  static SharedManager _instance;
  SharedManager._init();

  static SharedManager get instance {
    if (_instance == null) {
      _instance = SharedManager._init();
    }
    return _instance;
  }

  Future init() async {
    preferences = await SharedPreferences.getInstance();
  }

  Future<bool> saveStringValue(SharedKeys key, String value) async {
    return await preferences.setString(key.toString(), value);
  }

  String getStringValue(SharedKeys key) =>
      preferences.getString(key.toString());

  Future<bool> saveJsonModel<T>(SharedKeys key, T model) async {
    var json = jsonEncode(model);
    return await preferences.setString(key.toString(), json);
  }

  dynamic getJsonModel<T extends BaseModel>(T model, SharedKeys key) {
    var jsonString = preferences.getString(key.toString());
    var jsonModel = jsonDecode(jsonString);
    if (jsonModel is Map) {
      return model.fromJson(jsonModel);
    } else if (jsonModel is List) {
      return jsonModel.map((e) => model.fromJson(e)).toList();
    } else {
      return jsonModel;
    }
  }
}

enum SharedKeys { veli, postData }
