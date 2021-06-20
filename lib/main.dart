import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'utils.dart';

void main() => runApp(ExpirApp());

class ExpirApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ExpirApp',
      home: new LoginPage(),
      theme: new ThemeData(
        primaryColor: Utils.primaryColor,
      ),
    );
  }
}
