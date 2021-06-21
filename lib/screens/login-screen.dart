import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../modules/utils.dart';
import '../widgets/buttons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    _updateAppbar();
    super.initState();
  }

  void _updateAppbar() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Colors.transparent));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage("assets/burger.png"),
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
                    child: Utils.generateText("ExpirApp",
                        fontSize: 70.0,
                        color: Utils.primaryColor,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              Column(
                children: [
                  LoginButton("Google",
                      () => {Navigator.pushNamed(context, '/storage')}),
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
