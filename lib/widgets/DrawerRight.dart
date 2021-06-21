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
                title: Text("Stan Magazynu"),
                onTap: () => {
                      //...
                    }),
            ListTile(
                title: Text("Profil"),
                onTap: () => {
                      //...
                    }),
            ListTile(
                title: Text("Lista Zakupów"),
                onTap: () => {
                      //...
                    }),
            ListTile(
                title: Text("Szablony"),
                onTap: () => {
                      //...
                    }),
          ],
        ),
      ),
    );
  }
}
