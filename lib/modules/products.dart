import 'package:flutter/material.dart';
import 'package:test1/modules/utils.dart';

class Product {
  String name = '';
  double amount = 0;
  String unit = '';
  DateTime _expirationDate = new DateTime(2000, 1, 1, 23, 59);
  Product(this.name, this.amount, this.unit, DateTime expirationDate) {
    _expirationDate = new DateTime(
        expirationDate.year, expirationDate.month, expirationDate.day, 23, 59);
  }
  Text generateExpirationTimeText() {
    int hours = _expirationDate.difference(DateTime.now()).inHours;
    int days = _expirationDate.difference(DateTime.now()).inDays;
    String message = amount.toString() +
        " " +
        unit +
        " | " +
        (hours >= 0 ? "" : "przeterminowany o ") +
        (days >= 0 ? days : -days).toString() +
        " dni " +
        (hours >= 0 ? hours % 24 : 0 - (hours % 24)).toString() +
        " godzin";
    return Utils.generateText(message,
        color: (days >= 2 ? Utils.textColor : Utils.secondaryColor),
        fontSize: (days >= 2 ? 15 : 15.3));
  }

  ListTile generateListTile() {
    return new ListTile(
      title: Utils.generateText(name,
          color: (_expirationDate.difference(DateTime.now()).inHours >= 0
              ? Utils.textColor
              : Utils.secondaryColor),
          fontWeight: FontWeight.w500,
          fontSize: 20),
      subtitle: generateExpirationTimeText(),
      leading: new Icon(Icons.image),
      trailing: new Icon(Icons.more_vert),
    );
  }
}

class TymczasowaListaProduktow {
  static List<Product> products = [
    new Product('Jogurt', 3, 'opak.', new DateTime(2021, 6, 25)),
    new Product('Kefir', 3, 'but.', new DateTime(2021, 6, 23)),
    new Product('Ser żółty Gouda', 3, 'opak.', new DateTime(2021, 6, 20)),
    new Product('Jogurt', 1, 'but.', new DateTime(2021, 6, 25)),
  ];
  static List<ListTile> generateList() {
    List<ListTile> list = [];
    products.forEach((element) {
      list.add(element.generateListTile());
    });
    return list;
  }
}
