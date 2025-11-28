import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingServices {
  static late SharedPreferences shardPrefs;

  static Future initaializeSharedPref() async {
    shardPrefs = await SharedPreferences.getInstance();
  }

  static bool isFirstTime() {
    bool isFirstTime = shardPrefs.getBool('isFirstTime') ?? true;
    return isFirstTime;
  }

  static setFirstTimeWithFalse() {
    shardPrefs.setBool('isFirstTime', false);
  }

  static setFirstTimeWithTrue() {
    shardPrefs.setBool('isFirstTime', true);
  }
}
