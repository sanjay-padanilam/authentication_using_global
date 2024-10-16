import 'package:shared_preferences/shared_preferences.dart';

class RegistrationScreenController {
  static List datalist = [];

  static Future<void> addData(String name, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', name);
    await prefs.setString('password', password);
  }

  static getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    datalist.add(prefs.getString('name'));
    datalist.add(prefs.getString('password'));
    print(datalist);
  }
}
