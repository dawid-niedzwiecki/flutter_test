import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/modules/utils.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool _isOpen = true;
  int _chipSelectedIndex = 1;
  List<String> _chipOptions = ["Data", "Nazwa"];

  Widget _buildChips() {
    List<Widget> chips = [];
    for (int i = 0; i < _chipOptions.length; i++) {
      chips.add(
        ChoiceChip(
          selected: _chipSelectedIndex == i,
          label: Text(_chipOptions[i], style: TextStyle(color: Colors.white)),
          elevation: 10,
          selectedColor: Utils.primaryColor,
          backgroundColor: Utils.menuBackgroundColor,
          pressElevation: 5,
          onSelected: (bool selected) => {
            setState(() {
              if (selected) {
                _chipSelectedIndex = i;
              }
            }),
          },
        ),
      );
    }
    return Container(
      height: 50.0,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: chips,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: <Widget>[
              Flexible(
                child: ExpansionPanelList(
                  children: [
                    ExpansionPanel(
                      canTapOnHeader: false,
                      backgroundColor: Utils.backgroundColor,
                      headerBuilder: (context, isOpen) {
                        return AppBar(
                          backgroundColor: Utils.backgroundColor,
                          elevation: 0.0,
                          automaticallyImplyLeading: false,
                          title: CupertinoSearchTextField(
                            backgroundColor: Utils.menuBackgroundColor,
                            itemColor: Utils.primaryColor,
                            style: TextStyle(
                              color: Utils.textColor,
                            ),
                            onChanged: (value) => () {
                              /* ??? */
                            },
                          ),
                        );
                      },
                      body: Column(
                        children: [
                          Row(
                            children: [
                              Utils.generateText("Sortuj według:",
                                  fontWeight: FontWeight.w700),
                            ],
                          ),
                          Row(
                            children: [
                              _buildChips(),
                            ],
                          ),
                          Row(
                            children: [],
                          )
                        ],
                      ),
                      isExpanded: _isOpen,
                    ),
                  ],
                  expansionCallback: (i, isOpen) =>
                      setState(() => _isOpen = !isOpen),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
