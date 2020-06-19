import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'next_page.dart';
import 'next_page_two.dart';
import 'redux_state.dart';

class ReduxDemo extends StatelessWidget {
  final Store<ReduxState> store;
  ReduxDemo(this.store);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: store,
        child: StoreBuilder<ReduxState>(
            builder: (BuildContext context, Store<ReduxState> store) {
          return MaterialApp(
            title: 'ReduxDemo1',
            theme: new ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: FirstPage(),
          );
        }));
  }
}

class FirstPage extends StatefulWidget {
  static final String sName = "/";

  @override
  State createState() => FirstPageState();
}

class FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return StoreBuilder<ReduxState>(
        builder: (BuildContext context, Store<ReduxState> store) {
      return Scaffold(
        appBar: AppBar(
          title: Text("ReduxDemo"),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            Text(store.state.name),
            SizedBox(
              height: 30,
            ),
            FlatButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return NextPage();
                  }));
                },
                child: Text("go next I")),
            SizedBox(
              height: 30,
            ),
            FlatButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return NextPageTwo();
                  }));
                },
                child: Text("go next II")),
          ],
        )),
      );
    });
  }
}
