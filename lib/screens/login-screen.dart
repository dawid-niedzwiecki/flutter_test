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
        systemNavigationBarColor: Color(0xff343f56),
        systemNavigationBarDividerColor: Colors.transparent));
  }

  Widget build(BuildContext context) {
    TextEditingController controller = new TextEditingController();
    return Scaffold(
      backgroundColor: Color(0xff343f56),
      body: Stack(
        children: [
          Image(
            image: AssetImage("assets/images/burger.png"),
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
                    height: 70.0,
                  ),
                  Center(
                    child: Utils.generateText("ExpirApp",
                        fontSize: 70.0,
                        color: Utils.primaryColor,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Column(
                children: [
                  LoginButton("Google",
                      () => {Navigator.pushNamed(context, '/storage')}),
                  LoginButton("Facebook",
                      () => {Navigator.pushNamed(context, '/testing')}),
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
