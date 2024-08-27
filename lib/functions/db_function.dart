import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveBoolData(bool value) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  await prefs.setBool("IsUserLogin", value);
}

Future<bool> getBoolData() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  var data = prefs.getBool("IsUserLogin") ?? false;
  return data;
}
