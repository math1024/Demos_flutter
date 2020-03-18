import 'package:flutter/material.dart';

class ShoppingHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('Home Page'),
      ),
      resizeToAvoidBottomInset: false,
    );
  }

}