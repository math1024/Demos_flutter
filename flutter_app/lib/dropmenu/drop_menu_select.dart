import 'package:flutter/material.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';

class DropMenuSelect extends StatefulWidget {
  @override
  _DropMenuSelectState createState() => _DropMenuSelectState();
}

class _DropMenuSelectState extends State<DropMenuSelect> {
  var _text = 'flat';
  @override
  Widget build(BuildContext context) {
    var selectedValue;
    final List<DropdownMenuItem> items = [];
    List<int> selectedItems = [];
    for (var i = 0; i < 6; i++) {
      items.add(DropdownMenuItem(
        child: Text('wordPair $i'),
        value: i,
      ));
    }

    return Scaffold(
        appBar: AppBar(title: Text('Custom selector')),
        body: ListView(children: [
          FlatButton(
            child: Text('$_text'),
            onPressed: () => {},
          ),
          SearchableDropdown.single(
            items: items,
            value: selectedValue,
            hint: "Select one",
            searchHint: "Select one",
            onChanged: (value) {
              setState(() {
                selectedValue = value;
                print(selectedValue);
                _text = selectedValue.toString();
              });
              print(value);
            },
            isExpanded: true,
            displayClearIcon: false,
          ),
          SearchableDropdown.multiple(
            items: items,
            selectedItems: selectedItems,
            hint: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("Select any"),
            ),
            searchHint: "Select any",
            onChanged: (value) {
              setState(() {
                selectedItems = value;
                print(selectedItems);
              });
            },
            closeButton: (selectedItems) {
              return (selectedItems.isNotEmpty
                  ? "Save ${selectedItems.length == 1 ? '"' + items[selectedItems.first].value.toString() + '"' : '(' + selectedItems.length.toString() + ')'}"
                  : "Save without selection");
            },
            isExpanded: false,
          ),
          SearchableDropdown.single(
            items: items,
            value: selectedValue,
            hint: "Select one",
            searchHint: null,
            onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
            },
            dialogBox: false,
            isExpanded: false,
            menuConstraints: BoxConstraints.tight(Size.fromHeight(200)),
          ),
        ]));
  }
}
