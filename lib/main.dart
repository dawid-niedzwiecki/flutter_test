import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/login.dart';
import 'modules/utils.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeRoute(),
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
    return new MaterialApp(
      title: 'ExpirApp',
      home: new LoginPage(),
      theme: new ThemeData(
        primaryColor: Utils.primaryColor,
      ),
    );
  }
}
