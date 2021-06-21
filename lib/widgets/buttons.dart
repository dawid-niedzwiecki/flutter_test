import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  final VoidCallback fun;
  final String value;
  const LoginButton(this.value, this.fun);

  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: EdgeInsets.all(10),
      child: new ElevatedButton(
        onPressed: widget.fun,
        child: new Text("Zaloguj przy pomocy ${widget.value}"),
      ),
    );
  }
}
