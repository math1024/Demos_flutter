import 'package:flutter/material.dart';
import 'package:smart_select/smart_select.dart';

class SmartSelectDemo extends StatefulWidget {
  @override
  _SmartSelectDemoState createState() => _SmartSelectDemoState();
}

class _SmartSelectDemoState extends State<SmartSelectDemo> {

  List<int> value = [2];
  List<SmartSelectOption<int>> frameworks = [
    SmartSelectOption<int>(value: 1, title: 'Ionic'),
    SmartSelectOption<int>(value: 2, title: 'Flutter'),
    SmartSelectOption<int>(value: 3, title: 'React Native'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('smart select'),
        ),
        body: SmartSelect<int>.multiple(
          title: 'Frameworks',
          value: value,
          options: frameworks,
          modalType: SmartSelectModalType.popupDialog,
          choiceType: SmartSelectChoiceType.switches,
          onChange: (val) => setState(() => value = val),
        ),
    );
  }
}
