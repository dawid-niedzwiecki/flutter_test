import 'package:flutter/material.dart';

class Product {
  String name = '';
  double amount = 0;
  String unit = '';
  DateTime expirationDate = new DateTime(2000, 1, 1);
  Product(this.name, this.amount, this.unit, this.expirationDate);
  ListTile generateListTile() {
    return new ListTile(
      title: new Text(this.name),
      subtitle: new Text(amount.toString() + " " + unit + " | "),
      leading: new Icon(Icons.image),
      trailing: new Icon(Icons.more_vert),
    );
  }
}

class TymczasowaListaProduktow {
  static List<Product> products = [
    new Product('Jogurt', 3, 'opak.', new DateTime(2021, 6, 25)),
    new Product('Kefir', 3, 'but.', new DateTime(2021, 6, 22)),
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
