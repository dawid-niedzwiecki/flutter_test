import 'package:flutter/cupertino.dart';
import 'package:test1/modules/products.dart';

class StorageList extends StatefulWidget {
  final bool groupEnable;
  const StorageList(this.groupEnable);

  @override
  _StorageListState createState() => _StorageListState();
}

class _StorageListState extends State<StorageList> {
  @override
  Widget build(BuildContext context) {
    if (widget.groupEnable) {
      return new Container(
        child: ListView(
          children: TymczasowaListaProduktow.generateList(),
        ),
      );
    }
    return new Container();
  }
}

class StorageListGroup extends StatefulWidget {
  const StorageListGroup({Key? key}) : super(key: key);

  @override
  _StorageListGroupState createState() => _StorageListGroupState();
}

class _StorageListGroupState extends State<StorageListGroup> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
