import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:yc/callback/custom_count.dart';

class CustomWidgetCallbackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int count = 1;
    return Scaffold(
      appBar: AppBar(
        title: Text('custom call back demo'),
      ),
      // step 1
      // body: Center(child: CustomCountDemo(count)),

      // step 2
      // body: Center(
      //   child: CustomCountDemo(
      //       count: count,
      //       onCountSelected: () {
      //         print('onCountSelected');
      //       }),
      // ),

      body: Center(
        child: CustomCountDemo(
          count: count,
          onCountSelected: () {
            print("Count was selected.");
          },
          onCountChange: (int val) {
            print("Count was selected. $val");
          },
        ),
      ),
    );
  }
}
