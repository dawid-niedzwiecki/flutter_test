import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/modules/utils.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: <Widget>[
              Icon(
                Icons.expand_more,
                color: Utils.backgroundColor,
                size: 40.0,
              ),
              Flexible(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Szukaj produktów...",
                    suffixIcon: Icon(
                      Icons.cancel,
                    ),
                  ),
                  maxLength: 128,
                ),
              ),
            ],
          ),
          Row(),
          Row(),
        ],
      ),
    );
  }
}
