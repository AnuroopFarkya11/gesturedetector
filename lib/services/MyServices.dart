import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices{
  Future<bool> writeData(value)
  async{
    // create a instance of shared preference
    SharedPreferences sharedPref = await SharedPreferences.getInstance();

    return sharedPref.setInt("num", value);


  }



  Future<int> getData() async{
    SharedPreferences sharedPref = await SharedPreferences.getInstance();

    return sharedPref.getInt('num')??0;

}
}