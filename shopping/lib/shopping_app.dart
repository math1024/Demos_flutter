import 'package:flutter/material.dart';

import 'shopping_home.dart';
import 'shopping_login.dart';

class ShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping',
      theme: ThemeData.light(),
      home: ShoppingHome(),
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
    );
  }
  

  Route _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => ShoppingLogin(),
      fullscreenDialog: true,
    );
  }
}