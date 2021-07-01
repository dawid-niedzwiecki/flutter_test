import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test1/modules/utils.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool _isSwitched = false;
  bool _isOpen = false;
  List<bool> _isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
                          actions: [
                            Container(
                              width: 0,
                              height: 0,
                            ),
                          ],
                          backgroundColor: Utils.backgroundColor,
                          elevation: 0.0,
                          automaticallyImplyLeading: false,
                          primary: false,
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
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
                              child: Utils.generateText(
                                "Sortuj według:",
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Container(height: 10.0),
                          ToggleButtons(
                            borderRadius: BorderRadius.circular(15),
                            onPressed: (int index) {
                              setState(() {
                                _isSelected.setAll(0, [false, false]);
                                _isSelected[index] = true;
                                print(_isSelected);
                              });
                            },
                            isSelected: _isSelected,
                            selectedColor: Colors.amberAccent,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                child: Utils.generateText(
                                  "Data",
                                  fontSize: 18,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                child: Utils.generateText(
                                  "Nazwa",
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Container(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Utils.generateText("Rosnąco"),
                              Switch(
                                onChanged: (value) => {
                                  setState(() {
                                    _isSwitched = value;
                                    print(value);
                                  }),
                                },
                                value: _isSwitched,
                              ),
                              Utils.generateText("Malejąco"),
                            ],
                          ),
                          Container(height: 5),
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
