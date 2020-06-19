import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MvcLoginPage extends StatefulWidget {
  @override
  _MvcLoginPageState createState() => _MvcLoginPageState();
}

class _MvcLoginPageState extends State<MvcLoginPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _nameController.addListener(() {
      setState(() {});
    });
    _passwordController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MVC'),
      ),
      body: Stack(
        children: [
          Form(
              child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            children: [
              _buildTitle(),
              _buildTitleLine(),
              _buildNameTextField(),
              _buildPasswordTextField(context),
              SizedBox(height: 60.0),
              _buildLoginButton(context),
            ],
          )),
          Offstage(
            // offstage: !Con.isLoading,
            child: new Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.black54,
              child: new Center(
                child: SpinKitCircle(
                  color: Theme.of(context).primaryColor,
                  size: 25.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding _buildTitle() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '登录',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }

  Padding _buildTitleLine() {
    return Padding(
      padding: EdgeInsets.only(left: 12.0, top: 4.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          color: Colors.black,
          width: 40.0,
          height: 2.0,
        ),
      ),
    );
  }

  TextFormField _buildNameTextField() {
    return new TextFormField(
      controller: _nameController,
      decoration: new InputDecoration(
        labelText: 'UserName:',
        suffixIcon: new GestureDetector(
          onTap: () {
            _nameController.clear();
          },
          child: new Icon(_nameController.text.length > 0 ? Icons.clear : null),
        ),
      ),
      maxLines: 1,
    );
  }

  TextFormField _buildPasswordTextField(BuildContext context) {
    return new TextFormField(
      controller: _passwordController,
      decoration: new InputDecoration(
        labelText: 'Password:',
        suffixIcon: new GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child:
              new Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
        ),
      ),
      maxLines: 1,
      obscureText: _obscureText,
    );
  }

  Align _buildLoginButton(BuildContext context) {
    return Align(
      child: SizedBox(
        height: 45.0,
        width: 180.0,
        child: RaisedButton(
          child: Text(
            '登录',
            style: Theme.of(context).accentTextTheme.bodyText1,
          ),
          color: Colors.blueAccent,
          onPressed: _isValidLogin()
              ? () {
                  _login();
                }
              : null,
          shape: RoundedRectangleBorder(side: BorderSide()),
        ),
      ),
    );
  }

  _isValidLogin() {
    String name = _nameController.text;
    String password = _passwordController.text;
    return name.isNotEmpty && password.isNotEmpty;
  }

  void _login() {}
}
