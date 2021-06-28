import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/modules/products.dart';
import 'package:test1/modules/utils.dart';
import 'package:test1/widgets/DrawerRight.dart';
import 'package:test1/widgets/StorageFab.dart';
import 'package:test1/widgets/filter.dart';

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
    new Product('Kefir', 1, 'but.', new DateTime(2021, 6, 25)),
    new Product('Kefir', 1, 'but.', new DateTime(2021, 6, 25)),
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
      trailing: PopupMenuButton(
        color: Utils.menuBackgroundColor,
        elevation: 10,
        itemBuilder: (context) => [
          PopupMenuItem(
            child: new TextButton(
              child: Center(
                child: Center(
                  child: Utils.generateText("Otwórz"),
                ),
              ),
              onPressed: () => {},
            ),
            value: 1,
          ),
          PopupMenuItem(
            child: new TextButton(
              child: Center(
                child: Utils.generateText("Edytuj"),
              ),
              onPressed: () => {},
            ),
            value: 2,
          ),
          PopupMenuItem(
            child: new TextButton(
              child: Center(
                child: Center(
                  child: Utils.generateText("Duplikuj"),
                ),
              ),
              onPressed: () => {},
            ),
            value: 3,
          ),
          PopupMenuItem(
            child: new TextButton(
              child: Center(
                child: Utils.generateText("Usuń", color: Utils.secondaryColor),
              ),
              onPressed: () => {},
            ),
            value: 4,
          ),
        ],
      ),
      onTap: () => {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      floatingActionButton: ExpandableFab(
        distance: 112.0,
        children: [
          ActionButton(
            onPressed: () => {},
            text: Utils.generateText(
              "Produkt z szablonu",
              color: Utils.textColor,
              fontWeight: FontWeight.w500,
              fontSize: 17,
            ),
            icon: Icon(
              Icons.menu_book_outlined,
              color: Utils.primaryColor,
            ),
          ),
          ActionButton(
            onPressed: () => {},
            text: Utils.generateText(
              "Produkt",
              color: Utils.textColor,
              fontWeight: FontWeight.w500,
              fontSize: 17,
            ),
            icon: Icon(
              Icons.fastfood_outlined,
              color: Utils.primaryColor,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Utils.backgroundColor,
      appBar: new AppBar(
        title: Utils.generateText("Stan Magazynu",
            fontSize: 24.0, fontWeight: FontWeight.w500),
        backgroundColor: Utils.primaryColor,
      ),
      endDrawer: new DrawerRight(),
      body: new SingleChildScrollView(
        physics: ScrollPhysics(),
        child: new Column(
          children: [
            new Filter(),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return generateListTile(index);
              },
            ),
          ],
        ),
      ),
    );
  }
}
