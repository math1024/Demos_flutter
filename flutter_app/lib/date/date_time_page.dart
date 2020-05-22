import 'package:flutter/material.dart';

class DateAndTimerPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Date & Time')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Select Date'),
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: new DateTime.now(),
                  firstDate:
                      new DateTime.now().subtract(new Duration(days: 30)),
                  lastDate: new DateTime.now().add(new Duration(days: 30)),
                ).then((DateTime val) {
                  print(val);
                }).catchError((err) {
                  print(err);
                });
              },
            ),
            RaisedButton(
                child: Text('Time pick'),
                onPressed: () {
                  showTimePicker(
                    context: context,
                    initialTime: new TimeOfDay.now(),
                  ).then((val) {
                    print(val);
                  }).catchError((err) {
                    print(err);
                  });
                })
          ],
        ));
  }
}
