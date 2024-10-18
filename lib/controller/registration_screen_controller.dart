import 'package:shared_preferences/shared_preferences.dart';

class RegistrationScreenController {
  static late final SharedPreferences prefs;
  static String? databasename;
  static String? databasepassword;

  static initsharedPref() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future addData(String name, String password) async {
    await prefs.setString("name", name);
    await prefs.setString("pass", password);
  }

  static getData() async {
    databasename = prefs.getString('name');
    databasepassword = prefs.getString('pass');
  }
}
