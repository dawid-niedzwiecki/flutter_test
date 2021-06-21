import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/modules/utils.dart';

class DrawerRight extends StatefulWidget {
  const DrawerRight();

  @override
  _DrawerRightState createState() => _DrawerRightState();
}

class _DrawerRightState extends State<DrawerRight> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Utils.backgroundColor,
      ),
      child: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
                title: Utils.generateText("Stan Magazynu", fontSize: 16.0),
                onTap: () => {
                      //...
                    }),
            ListTile(
                title: Utils.generateText("Profil", fontSize: 16.0),
                onTap: () => {
                      //...
                    }),
            ListTile(
                title: Utils.generateText("Lista Zakupów", fontSize: 16.0),
                onTap: () => {
                      //...
                    }),
            ListTile(
                title: Utils.generateText("Szablony", fontSize: 16.0),
                onTap: () => {
                      //...
                    }),
          ],
        ),
      ),
    );
  }
}
