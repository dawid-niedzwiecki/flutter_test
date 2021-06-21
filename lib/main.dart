import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/screens/test-screen.dart';
import 'screens/login-screen.dart';
import 'modules/utils.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/test': (context) => LoginPage2(),
        '/przyklad': (context) => Przyklad(),
      },
    ),
  );
}

class Przyklad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Umieśćić w opPressed (np. onPressed: () => { tu_funkcja; },)
    // Navigator.pushNamed(context, '/stronka'); Przejście na inną stronkę
    // Navigator.pop(context); Powrót do poprzedniej stronki
    return new MaterialApp(
      title: "Przyklad",
      theme: new ThemeData(
        primaryColor: Utils.primaryColor,
      ),
    );
  }
}

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp();
  }
}
