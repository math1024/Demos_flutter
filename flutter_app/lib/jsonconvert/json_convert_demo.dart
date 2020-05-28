import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:yc/jsonconvert/address.dart';
import 'package:yc/jsonconvert/product.dart';
import 'package:yc/jsonconvert/shape.dart';
import 'package:yc/jsonconvert/student.dart';

/// json example from https://medium.com/flutter-community/parsing-complex-json-in-flutter-747c46655f51

class JsonConvertDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _str1 = 'holder place';
    return Scaffold(
      appBar: AppBar(
        title: Text('Json Convert'),
      ),
      body: ListView(
        children: [
          RaisedButton(
            child: Text('Easy I parse student'),
            onPressed: () async {
              String jsonStudent =
                  await rootBundle.loadString('assets/student.json');
              final jsonResponse = json.decode(jsonStudent);

              Student ss = Student.fromJson(jsonResponse);
              print(ss.toString());

              JsonEncoder encoder = new JsonEncoder.withIndent('  ');
              String pretty = encoder.convert(jsonResponse);
              debugPrint(pretty);
            },
          ),
          Text(_str1),
          RaisedButton(
            child: Text('Easy II parse address'),
            onPressed: () async {
              String address =
              await rootBundle.loadString('assets/address.json');
              final jsonResponse = json.decode(address);

              Address ss = Address.fromJson(jsonResponse);
              print(ss.toString());
            },
          ),

          RaisedButton(
            child: Text('Medium I parse shape'),
            onPressed: () async {
              String shape =
              await rootBundle.loadString('assets/shape.json');
              final jsonResponse = json.decode(shape);

              Shape ss = Shape.fromJson(jsonResponse);
              print(ss.toString());
            },
          ),

          RaisedButton(
            child: Text('Medium II parse shape'),
            onPressed: () async {
              String product =
              await rootBundle.loadString('assets/product.json');
              final jsonResponse = json.decode(product);

              Product pp = Product.fromJson(jsonResponse);
              print(pp.toString());
            },
          ),
        ],
      ),
    );
  }
}
