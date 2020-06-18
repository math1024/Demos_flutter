import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'redux_state.dart';

class NextPageTwo extends StatefulWidget {
  @override
  State createState() => NextPageTwoState();
}

class NextPageTwoState extends State<NextPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StoreConnecter"),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          StoreConnector<ReduxState, String>(
            converter: (store) => store.state.name,
            builder: (BuildContext context, String name) {
              return Text(name);
            },
          ),
          SizedBox(
            height: 50,
          ),
          StoreBuilder<ReduxState>(builder: (context, store) {
            return FlatButton(
                onPressed: () {
                  store.dispatch(ReduxAction.Change);
                },
                child: Text("change data"));
          }),
        ],
      )),
    );
  }
}
