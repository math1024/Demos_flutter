import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

/// https://pub.dev/packages/fluttertoast#-readme-tab-

class ToastDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Toast')),
      body: Center(
        child: Column(
          children: [
            FlatButton(
                onPressed: () {
                  // Fluttertoast.showToast(msg: 'Toast');
                },
                child: Text('basic')),
            FlatButton(
                onPressed: () {
                  // Fluttertoast.showToast(
                  //   msg: "This is Colored Toast with android duration of 5 Sec",
                  //   toastLength: Toast.LENGTH_SHORT,
                  //   webBgColor: "#e74c3c",
                  //   timeInSecForIosWeb: 5,
                  // );
                },
                child: Text('basic II')),
            FlatButton(
                onPressed: () {
                  // Fluttertoast.showToast(
                  //     msg:
                  //         "This is Colored Toast with android duration of 5 Sec",
                  //     toastLength: Toast.LENGTH_SHORT,
                  //     backgroundColor: Colors.red,
                  //     textColor: Colors.white);
                },
                child: Text('backgroundColor')),
            FlatButton(
                onPressed: () {
                  // Fluttertoast.showToast(
                  //     msg: "This is Top Short Toast",
                  //     toastLength: Toast.LENGTH_SHORT,
                  //     gravity: ToastGravity.TOP,
                  //     timeInSecForIosWeb: 1);
                },
                child: Text('ToastGravity.TOP')),
            FlatButton(
                onPressed: () {
                  // Fluttertoast.showToast(
                  //     msg: "This is Center Short Toast",
                  //     toastLength: Toast.LENGTH_SHORT,
                  //     gravity: ToastGravity.CENTER,
                  //     timeInSecForIosWeb: 1);
                },
                child: Text('ToastGravity.CENTER')),
          ],
        ),
      ),
    );
  }
}
