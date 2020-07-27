import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yc/login/mvc/mvc_login_page.dart';

void main() {
  testWidgets('test for statefulwidget', (WidgetTester tester) async {
    await tester.pumpWidget(MvcLoginPageWrapper());

    expect(
        find.text(
          '登录1',
        ),
        findsOneWidget);

    expect(find.byType(TextFormField), findsWidgets);
    expect(find.byType(TextFormField), findsNWidgets(2));
    await tester.tap(find.text('登录'));
    await tester.pump();
  });
}

class MvcLoginPageWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MvcLoginPage(),
    );
  }
}
