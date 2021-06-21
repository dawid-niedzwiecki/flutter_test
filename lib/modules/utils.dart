import 'package:flutter/cupertino.dart';

// Klasa pomocnicza
class Utils {
  static Color backgroundColor = new Color(0xff343F56);
  static Color primaryColor = new Color(0xfffb9300);
  static Color secondaryColor = new Color(0xfff54748);
  static Color textColor = new Color(0xfff5e6ca);
  static Text generateText(String value,
      {double fontSize = 15.0,
      Color color = const Color(0xffe0e0e0),
      String fontFamily = "Montserrat",
      FontWeight fontWeight = FontWeight.normal}) {
    return new Text(
      value,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
      ),
    );
  }
}
