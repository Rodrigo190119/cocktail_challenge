library prefs;
import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class Prefs{

  static Future<SharedPreferences>? _prefs = SharedPreferences.getInstance();

  static SharedPreferences? _prefsInstance;

  static bool _initCalled = false;

  static Future<SharedPreferences> init() async{
    _initCalled = true;
    _prefsInstance = (await _prefs)!;
    return _prefs!;
  }

  static void dispose(){
    _prefs = null;
    _prefsInstance = null;
  }

  static bool getBool(String key, [bool defValue = false]){
    assert(_initCalled, "Prefs.init() must be called first in an initState() preferably!");
    assert(_prefsInstance != null, "Maybe call Prefs.getBoolF(key) instead. SharedPreferences not ready yet!");
    return _prefsInstance!.getBool(key) ?? defValue;
  }

  static int getInt(String key, [int defValue = 0]){
    assert(_initCalled, "Prefs.init() must be called first in an initState() preferably!");
    assert(_prefsInstance != null, "Maybe call Prefs.getIntF(key) instead. SharedPreferences not ready yet!");
    return _prefsInstance!.getInt(key) ?? defValue;
  }

  static double getDouble(String key, [double defValue = 0.0]){
    assert(_initCalled, "Prefs.init() must be called first in an initState() preferably!");
    assert(_prefsInstance != null, "Maybe call Prefs.getDoubleF(key) instead. SharedPreferences not ready yet!");
    return _prefsInstance!.getDouble(key) ?? defValue;
  }

  static String getString(String key, [String defValue = '']){
    assert(_initCalled, "Prefs.init() must be called first in an initState() preferably!");
    assert(_prefsInstance != null, "Maybe call Prefs.getStringF(key)instead. SharedPreferences not ready yet!");
    return _prefsInstance!.getString(key) ?? defValue;
  }

  static Future<bool> setBool(String key, bool value) async {
    var instance = await _prefs;
    return instance?.setBool(key, value) ?? Future.value(false);
  }

  static Future<bool> setInt(String key, int value) async {
    var instance = await _prefs;
    return instance?.setInt(key, value) ?? Future.value(false);
  }

  static Future<bool> setDouble(String key, double value) async {
    var instance = await _prefs;
    return instance?.setDouble(key, value) ?? Future.value(false);
  }

  static Future<bool> setString(String key, String value) async {
    var instance = await _prefs;
    return instance?.setString(key, value) ?? Future.value(false);
  }

  static Future<bool> remove(String key) async {
    var instance = await _prefs;
    return instance?.remove(key) ?? Future.value(false);
  }

  static Future<bool> clear() async {
    var instance = await _prefs;
    return instance?.clear() ?? Future.value(false);
  }
}