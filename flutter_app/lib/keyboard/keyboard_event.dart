import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KeyboardEventDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('KeyEvent')),
        body: Column(
          children: [
            Text('next action'),
            TextField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.newline,
              decoration: InputDecoration(
                labelText: 'newLine',
                  contentPadding: EdgeInsets.all(10.0)
              ),
              onSubmitted: (value) {
                print(value);
              },
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: '下一项',
                contentPadding: EdgeInsets.all(10.0)
              ),
              textInputAction: TextInputAction.next,
              onSubmitted: (value) {
                 FocusScope.of(context).requestFocus(new FocusNode());
                showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return new CupertinoAlertDialog(
                        title: new Text("title"),
                        content: new Text("内容内容内容内容内容内容内容内容内容内容内容"),
                        actions: <Widget>[
                          new FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop("点击了确定");
                            },
                            child: new Text("确认"),
                          ),
                          new FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop("点击了取消");
                            },
                            child: new Text("取消"),
                          ),
                        ],
                      );
                    });
              },
            ),
          ],
        ));
  }
}
