import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/modules/utils.dart';

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
        style: new ButtonStyle(
          fixedSize: MaterialStateProperty.resolveWith<Size>(
              (Set<MaterialState> states) {
            return new Size(290, 50);
          }),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            return Utils.secondaryColor;
          }),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            return Utils.textColor;
          }),
        ),
        onPressed: widget.fun,
        child: Utils.generateText("Zaloguj przy pomocy ${widget.value}",
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
