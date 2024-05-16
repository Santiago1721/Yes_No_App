import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 14, 2, 34);

const List<Color> _colorThemes = [

  _customColor,
  Colors.blue,  //color primario
  Colors.green,  // color secundario 
  Colors.red,  //y asi sucesivamente
  Colors.yellow,
  Colors.brown,
  Colors.pink,
  Colors.orange,
];

class AppTheme {

  final int selectedColor;

  AppTheme({
     this.selectedColor = 0
    }): assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
     'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme(){
    return ThemeData(
    useMaterial3: true,
    colorSchemeSeed: _colorThemes[selectedColor]
    );
  }

}