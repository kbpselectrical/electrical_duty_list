import 'package:duty_list_v1/logic/sunday_calc..dart';
import 'package:duty_list_v1/pdf/display_pdf.dart';
import 'package:duty_list_v1/pdf/file_open_pdf.dart';
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
        primarySwatch: Colors.blueGrey,
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
        title: FittedBox(
          child: Text(
            'DUTY LIST OF ELECTRICAL SECTION:Select The Date',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10))),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 190,
              child: CupertinoDatePicker(
                  initialDateTime: DateTime(2022, 1, 1),
                  minimumDate: DateTime(2022),
                  maximumDate: DateTime(2060),
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: (dateTime) {
                    setState(() {
                      this.dateTime = dateTime;
                    });
                    a1 = dateTime.year;
                    a2 = dateTime.month;
                  }),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: (() async {
                  SundayCalc();

                  final pdfFile = await PdfDutyListApi.generateDutyList();
                  PdfApi.openFile(pdfFile);
                }),
                child: Text('Download')),

            //     ElevatedButton(
            //         onPressed: (() async {
            //           printDoc();
            //         }),
            //         child: Text('Print')),
          ],
        ),
      ),
    );
  }
}
