import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/modules/products.dart';
import 'package:test1/modules/utils.dart';
import 'package:test1/widgets/DrawerRight.dart';

class StoragePage extends StatefulWidget {
  const StoragePage({Key? key}) : super(key: key);

  @override
  _StoragePageState createState() => _StoragePageState();
}

class _StoragePageState extends State<StoragePage> {
  List<Product> products = [
    new Product('Jogurt', 3, 'opak.', new DateTime(2021, 6, 25)),
    new Product('Kefir', 3, 'but.', new DateTime(2021, 6, 23)),
    new Product('Ser żółty Gouda', 3, 'opak.', new DateTime(2021, 6, 20)),
    new Product('Kefir', 1, 'but.', new DateTime(2021, 6, 25)),
  ];

  Text generateDetailsText(int index) {
    int hours =
        products[index].expirationDate.difference(DateTime.now()).inHours;
    int days = products[index].expirationDate.difference(DateTime.now()).inDays;
    String message = products[index].amount.toString() +
        " " +
        products[index].unit +
        " | " +
        (hours >= 0 ? "" : "przeterminowany o ") +
        (days >= 0 ? days : -days).toString() +
        " dni " +
        (hours >= 0 ? hours % 24 : (25 - hours) % 24).toString() +
        " godzin";
    return Utils.generateText(message,
        color: (days >= 2 ? Utils.textColor : Utils.secondaryColor),
        fontSize: (days >= 2 ? 15 : 15.7),
        fontWeight: (days >= 2 ? FontWeight.w300 : FontWeight.w500));
  }

  ListTile generateListTile(int index) {
    return new ListTile(
      title:
          (products[index].expirationDate.difference(DateTime.now()).inHours >=
                  0
              ? Utils.generateText(products[index].name,
                  color: Utils.textColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 20)
              : Utils.generateText(products[index].name,
                  color: Utils.secondaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 22)),
      subtitle: generateDetailsText(index),
      leading: new Icon(Icons.image),
      trailing: new IconButton(
        splashRadius: 27,
        onPressed: () => {},
        icon: new Icon(Icons.more_vert),
        iconSize: 32,
      ),
      onTap: () => {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.backgroundColor,
      appBar: AppBar(
        title: Utils.generateText("Stan Magazynu",
            fontSize: 24.0, fontWeight: FontWeight.w500),
        backgroundColor: Utils.primaryColor,
      ),
      endDrawer: DrawerRight(),
      body: Container(
        child: ListView(
          children: products
              .asMap()
              .entries
              .map(
                (MapEntry map) => generateListTile(map.key),
              )
              .toList(),
        ),
      ),
    );
  }
}
