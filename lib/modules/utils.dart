import 'package:flutter/cupertino.dart';

// Klasa pomocnicza
class Utils {
  static Color backgroundColor = new Color(0xff404040);
  static Color primaryColor = new Color(0xffc23dff);
  static Color secondaryColor = new Color(0xff202020);
  static Color textColor = new Color(0xffe0e0e0);
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
