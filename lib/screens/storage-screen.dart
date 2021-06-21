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
          children: TymczasowaListaProduktow.generateList(),
        ),
      ),
    );
  }
}
