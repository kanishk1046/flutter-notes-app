import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
import 'package:notes_app/theme/theme.dart';

class ThemeProvider with ChangeNotifier{

  //initial theme is light mode
  ThemeData _themeData = lightMode;

  //getter method to access the theme from the parts of code
  ThemeData get themeData => _themeData;

  //getter method to see we are in dark mode or not
  bool get isDarkMode => _themeData == darkMode;

  //setter method to set the new theme
  set themeData(ThemeData themeData){
    _themeData = themeData;
    notifyListeners();
  }

  //we will use this toggke in the switch later on
  void toggleTheme(){
    if(_themeData==lightMode){
      themeData=darkMode;
    }
    else{
      themeData=lightMode;
    }
  }
}