import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:redux/redux.dart';
import 'package:yc/button/raised_button_demo.dart';
import 'package:yc/callback/custom_widget_callback.dart';
import 'package:yc/charts/chart_set.dart';
import 'package:yc/charts/sync_fusion_chart.set.dart';
import 'package:yc/date/date_time_page.dart';
import 'package:yc/dio/dio_lib_demo.dart';
import 'package:yc/driver/list_test_driver.dart';
import 'package:yc/dropmenu/drop_menu_select.dart';
import 'package:yc/jsonconvert/json_convert_demo.dart';
import 'package:yc/keyboard/keyboard_event.dart';
import 'package:yc/list/list_main.dart';
import 'package:yc/login/entrance.dart';
import 'package:yc/redux/redux_demo.dart';
import 'package:yc/redux/redux_state.dart';
import 'package:yc/rowcolumn/column_demo.dart';
import 'package:yc/rowcolumn/row_demo.dart';
import 'package:yc/text/text_sets.dart';
import 'package:yc/theme/theme_notify.dart';
import 'package:yc/toast/toast_demo.dart';
import 'dart:developer' as developer;

void main() {
  debugPaintSizeEnabled = !true;
  developer.log('log me', level: 1, name: 'my.app.category');

  developer.log('log me 1', name: 'my.other.category');
  developer.log('log me 2', name: 'my.other.category');
  runApp(
    ChangeNotifierProvider<ThemeNotify>(
      create: (_) => ThemeNotify(darkTheme),
      child: MyApp(),
    ),
  );
}

final darkTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Colors.black,
  brightness: Brightness.dark,
  backgroundColor: const Color(0xFF212121),
  accentColor: Colors.white,
  accentIconTheme: IconThemeData(color: Colors.black),
  dividerColor: Colors.black12,
);

final lightTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Colors.white,
  brightness: Brightness.light,
  backgroundColor: const Color(0xFFE5E5E5),
  accentColor: Colors.black,
  accentIconTheme: IconThemeData(color: Colors.white),
  dividerColor: Colors.white54,
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotify>(context);
    return MaterialApp(
      title: 'Weclome Flutter Codelabs',
      theme: themeNotifier.getTheme(),
      // theme: ThemeData(
      //   // This is the theme of your application.
      //   //
      //   // Try running your application with "flutter run". You'll see the
      //   // application has a blue toolbar. Then, without quitting the app, try
      //   // changing the primarySwatch below to Colors.green and then invoke
      //   // "hot reload" (press "r" in the console where you ran "flutter run",
      //   // or simply save your changes to "hot reload" in a Flutter IDE).
      //   // Notice that the counter didn't reset back to zero; the application
      //   // is not restarted.
      //   primarySwatch: Colors.blue,
      // ),
      home: MyHomePage(title: 'Flutter Codelab Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isDartTheme = true;
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotify>(context);
    final wordPair = WordPair.random();
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: [
          IconButton(
              icon: const Icon(Icons.add),
              tooltip: 'Show',
              onPressed: () {
                debugPrint('action button');
              }),
          IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show',
              onPressed: () {
                debugPrint('action button');
              }),
          Switch(
              value: isDartTheme,
              onChanged: (value) {
                isDartTheme = value;
                if (value) {
                  themeNotifier.setTheme(darkTheme);
                } else {
                  themeNotifier.setTheme(lightTheme);
                }
              })
        ],
      ),
      body: ListView(
        children: <Widget>[
          Text(
            'Weclome to Codelabs. ' + wordPair.asPascalCase,
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: Text('Raise button'),
            onPressed: () {
              print('click raise button');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RaisedButtonSets()));
            },
            textColor: Colors.greenAccent,
            color: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          RaisedButton(
            child: Text('list'),
            onPressed: () {
              print('click list button');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ListDemoMain()));
            },
            textColor: Colors.greenAccent,
            color: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          RaisedButton(
            child: Text('syncfusion flutter charts'),
            onPressed: () {
              print('click syncfusion flutter chart button');
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SyncFusionChartSet()));
            },
            textColor: Colors.greenAccent,
            color: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          RaisedButton(
            child: Text('goolge offical charts'),
            onPressed: () {
              print('click goolge offical charts button');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChartSets()));
            },
            textColor: Colors.greenAccent,
            color: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          RaisedButton(
            child: Text('Text Set'),
            onPressed: () {
              print('click Text Set button');
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TextSets()));
            },
            textColor: Colors.greenAccent,
            color: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          RaisedButton(
            child: Text('Date Time Picker'),
            onPressed: () {
              print('click Date Time Picker button');
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DateAndTimerPicker()));
            },
            textColor: Colors.greenAccent,
            color: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          RaisedButton(
            child: Text('Dio Demo'),
            onPressed: () {
              print('click Dio Demo button');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DioLibDemo()));
            },
            textColor: Colors.greenAccent,
            color: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          RaisedButton(
            child: Text('Json Convert Demo'),
            onPressed: () {
              print('click Json Convert Demo button');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => JsonConvertDemo()));
            },
            textColor: Colors.greenAccent,
            color: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          RaisedButton(
            child: Text('Keyboard Event Demo'),
            onPressed: () {
              print('click Keyboard Event Demo button');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => KeyboardEventDemo()));
            },
            textColor: Colors.greenAccent,
            color: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          RaisedButton(
            child: Text('Toast Demo'),
            onPressed: () {
              print('click Toast Demo button');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ToastDemo()));
            },
            textColor: Colors.greenAccent,
            color: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          FlatButton(
              onPressed: () {
                print('click Redux Demo button');
                final store = Store<ReduxState>(getReduce,
                    initialState: ReduxState.initState());
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ReduxDemo(store)));
              },
              textColor: Colors.lightBlue,
              child: Text('Redux Demo')),
          FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EntrancePage()));
              },
              textColor: Colors.lightBlue,
              child: Text('State Select Demo')),
          MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CustomWidgetCallbackDemo()));
              },
              textColor: Colors.lightBlue,
              child: Text('CustomWidgetCallbackDemo')),
          MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RowDemo()));
              },
              textColor: Colors.lightBlue,
              child: Text('RowDemo')),
          MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ColumnDemo()));
              },
              textColor: Colors.lightBlue,
              child: Text('ColumnDemo')),
          RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DropMenuSelect()));
              },
              textColor: Colors.lightBlue,
              child: Text('DropMenuSelectorDemo')),
          Center(
              child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => (ListForDriver())));
            },
            child: Text('Test Driver'),
          )),
        ],
      ),
    );
  }
}
