import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:yc/jsonconvert/json_example_demo.dart';
import 'package:yc/jsonconvert/json_serializable_data.dart';


void main(){
  group('jsonparse test', (){
    test('mockdata test', (){
      Data data1 = Data.fromJson(json.decode(JsonString.mockdata));
      expect(data1.url, 'http://www.getdropbox.com/u/2/screencast.html');
    });
  });
}