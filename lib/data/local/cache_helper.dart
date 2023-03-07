
import 'package:shared_preferences/shared_preferences.dart';

import '../../constant/my_shared_keys.dart';

class CacheHelper{
  static SharedPreferences? preferences;

  static Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  static void putString({required MySharedKeys key, required String value}) async{
    await preferences?.setString(key.name, value);
  }

  static String getString({required MySharedKeys key}){
    return preferences?.getString(key.name) ?? "";
  }

  static void putBoolean({required MySharedKeys key, required bool value}) async{
    await preferences?.setBool(key.name, value);
  }

  static bool getBoolean({required MySharedKeys key}){
    return preferences?.getBool(key.name) ?? false;
  }

  static void putInt({required MySharedKeys key, required int value}) async{
    await preferences?.setInt(key.name, value);
  }

  static int getInt({required MySharedKeys key}){
    return preferences?.getInt(key.name) ?? 0;
  }

  static void putDouble({required MySharedKeys key, required double value}) async{
    await preferences?.setDouble(key.name, value);
  }

  static double getDouble({required MySharedKeys key}){
    return preferences?.getDouble(key.name) ?? 0.0;
  }

  static Future<void> removeShared({required MySharedKeys key,}) async {
    await preferences?.remove(key.name);
  }

  static Future<bool>? clearShared(){
    return preferences?.clear();
  }
}