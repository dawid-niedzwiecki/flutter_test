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
  List<bool> _isSelected = [true, false];

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
                              ToggleButtons(
                                isSelected: _isSelected,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16.0),
                                    child: Utils.generateText("Data"),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16.0),
                                    child: Utils.generateText("Data"),
                                  ),
                                ],
                              ),
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
