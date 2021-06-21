import 'package:flutter/material.dart';
import '../modules/utils.dart';
import '../widgets/buttons.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({Key? key}) : super(key: key);
  @override
  _LoginPage2State createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
        leading: GestureDetector(
            onLongPress: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back)),
      ),
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
