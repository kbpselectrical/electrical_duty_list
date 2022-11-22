import 'dart:io';

import 'package:flutter/services.dart';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:intl/intl.dart';

import '../logic/sunday_calc..dart';
import '../main.dart';
import 'file_open_pdf.dart';

class PdfDutyListApi {
  static Future<File> generateDutyList() async {
    final pdf = Document();

    final customFont =
        // Font.ttf(await rootBundle.load('assets/OpenSans-Regular.ttf'));

        pdf.addPage(
      MultiPage(
        build: (Context) => <Widget>[
          builCustomHeader(),
          SizedBox(height: .5 * PdfPageFormat.cm),
          for (var i = 0; i < sun.length; i++) DutyListHeader(i),
        ],
        footer: (context) {
          final text = 'page  ${context.pageNumber} of ${context.pagesCount}';

          return Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(top: .1 * PdfPageFormat.cm),
            child: Text(text, style: TextStyle(color: PdfColors.black)),
          );
        },
      ),
    );

    return PdfApi.saveDocument(name: 'Electrical_DutyList.pdf', pdf: pdf);
  }

  static Widget builCustomHeader() => Container(
        padding: EdgeInsets.only(bottom: 3 * PdfPageFormat.mm),
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(width: 2, color: PdfColors.blue))),
        child: Row(children: [
          // PdfLogo(),
          // SizedBox(width: .5 * PdfPageFormat.cm),

          Text(
              'DUTY LIST OF ELECTRICAL SECTION FOR THE MONTH OF ${DateFormat.LLL().format(DateTime(a1, a2, a3))}' +
                  '  ${a1}',
              style: TextStyle(fontSize: 14, color: PdfColors.red))
        ]),
      );

  static Widget DutyListHeader(i) => Container(
        padding: EdgeInsets.only(bottom: 3 * PdfPageFormat.mm),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(width: 10 * PdfPageFormat.cm),
          Text(week[i],
              style: TextStyle(
                fontSize: 10,
                color: PdfColors.black,
                decoration: TextDecoration.underline,
              )),

          Bullet(
              text: 'DUTY ELECTRICIAN      :' + '   ' + weekEndS1[i],
              bulletColor: PdfColors.white),

          //  SizedBox(height: .1 * PdfPageFormat.cm),
          Bullet(
              text: 'GENERAL           :' + '   ' + weekEndS2[i],
              bulletColor: PdfColors.white),
          Bullet(
              text: 'SECOND    :' + '   ' + weekEndS3[i],
              bulletColor: PdfColors.white),
// **************************************************************
          Text(weekEnd[i],
              style: TextStyle(
                fontSize: 10,
                color: PdfColors.black,
                decoration: TextDecoration.underline,
              )),

          Bullet(
              text: 'DUTY ELECTRICIAN       :' + '   ' + weekS1[i],
              bulletColor: PdfColors.white),

          //  SizedBox(height: .1 * PdfPageFormat.cm),

          Bullet(
              text: 'SECOND   :' + '   ' + weekS2[i],
              bulletColor: PdfColors.white),
        ]),
      );
}
