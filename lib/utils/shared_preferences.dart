import 'package:shared_preferences/shared_preferences.dart';

class sharedclass
{

  Future<void> setData() async {
    SharedPreferences shar =await SharedPreferences.getInstance();
    shar.setString('name','na');
    shar.setString('password','pa');
  }

  Future<void> getData()
  async {
    SharedPreferences shar =await SharedPreferences.getInstance();

    String? name = shar.getString('name');
    String? password = shar.getString('password');

  }
}