import 'package:appwrite/appwrite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/modules/connection.dart';
import 'package:test1/screens/storage-screen.dart';
import 'package:test1/screens/testing-screen.dart';
import 'screens/login-screen.dart';
import 'modules/utils.dart';

void main() {
  Client client = new Client();
  Account account = new Account(client);
  client.setEndpoint(Connection.endpoint).setProject(Connection.project);
  Future result = account.createOAuth2Session(
      provider: 'google',
      success: 'https://www.google.pl/',
      failure:
          'https://pl.wikipedia.org/wiki/Wikipedia:Strona_g%C5%82%C3%B3wna');
  result
      .then((response) => {print(response)})
      .catchError((error) => {print(error.response)});

  runApp(
    MaterialApp(
      title: 'ExpirApp',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/testing': (context) => Testing(),
        '/storage': (context) => StoragePage(),
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
