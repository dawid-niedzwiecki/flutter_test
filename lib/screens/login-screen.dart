import 'package:flutter/material.dart';
import '../modules/utils.dart';
import '../widgets/buttons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage("burger.png"),
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 50.0,
                  ),
                  Center(
                    child: Text(
                      "ExpirApp",
                      style:
                          TextStyle(color: Utils.primaryColor, fontSize: 80.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  LoginButton("Google", () => {}),
                  LoginButton("Facebook", () => {print("dupa")}),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
