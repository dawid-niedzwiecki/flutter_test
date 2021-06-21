import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/modules/products.dart';
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
      appBar: AppBar(
        title: Text("Stan magazynu"),
      ),
      drawer: DrawerRight(),
      body: Stack(
        children: [
          Image(
            image: AssetImage("assets/burger.png"),
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          new Container(
            child: ListView(
              children: TymczasowaListaProduktow.generateList(),
            ),
          ),
        ],
      ),
    );
  }
}
