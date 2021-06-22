import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/widgets/filter.dart';

class Testing extends StatefulWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  _TestingState createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Filter(),
    );
  }
}
