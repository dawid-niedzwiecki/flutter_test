import 'package:flutter/material.dart';
import 'utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Utils.backgroundColor,
      body: new Container(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            new Text(
              "ExpirApp",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 80, color: Utils.textColor),
            ),
            new Align(
              child: new Column(
                children: [
                  new Padding(
                    padding: const EdgeInsets.all(10),
                    child: new ElevatedButton(
                      onPressed: () => {},
                      child: new Text("Zaloguj przy pomocy Google"),
                    ),
                  ),
                ],
              ),
              alignment: Alignment.bottomCenter,
            ),
          ],
        ),
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: AssetImage("burger.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
