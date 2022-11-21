import 'package:duty_list_v1/logic/shift_change_logic.dart';
import 'package:duty_list_v1/logic/sunday_calc..dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int a1 = 2022;
int a2 = 1;
int a3 = 1;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var dateTime = DateTime(2022);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select The Date'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              child: CupertinoDatePicker(
                  initialDateTime: dateTime,
                  minimumDate: dateTime,
                  maximumDate: DateTime(2030),
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: (datTime) {
                    setState(() {
                      this.dateTime = datTime;
                    });
                    a1 = dateTime.year;
                    a2 = dateTime.month;
                  }),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: (() {
                  SundayCalc();
                  ShiftChangeLogic();
                  // print(nofSundays);
                }),
                child: Text('Download')),
          ],
        ),
      ),
    );
  }
}
