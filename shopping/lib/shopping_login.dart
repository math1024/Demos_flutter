import 'package:flutter/material.dart';

class ShoppingLogin extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<ShoppingLogin> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _nameIsComposing = false;
  bool _passwordIsComposing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                SizedBox(height: 16.0),
                Text('Shrine'),
              ],
            ),
            SizedBox(height: 120.0),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
              onChanged: (String text) {
                setState(() {
                  _nameIsComposing = text.length > 0;
                });
              },
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                filled: false,
                labelText: 'Password',
              ),
              obscureText: true,
              onChanged: (String text) {
                setState(() {
                  _passwordIsComposing = text.length > 0;
                });
              },
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text('CANCEL'),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                    print('cancel');
                  },
                ),
                RaisedButton(
                  child: Text('NEXT'),
                  onPressed: () {
                    if (_passwordIsComposing && _nameIsComposing) {
                      Navigator.pop(context);
                    }
                    print('NEXT');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
