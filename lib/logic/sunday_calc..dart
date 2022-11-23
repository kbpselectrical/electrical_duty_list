import 'package:duty_list_v1/logic/sunday_shift_change.dart';
import 'package:duty_list_v1/logic/week_shift_change_logic.dart';
import 'package:duty_list_v1/main.dart';
import 'package:intl/intl.dart'; // for date format
import 'package:intl/date_symbol_data_local.dart'; // for other locales

int nofSundays = 0;
List<int> sun = [];
List<String> week = [];
List<String> weekS1 = [];
List<String> weekS2 = [];
List<String> weekS3 = [];
List<String> weekEnd = [];
List<String> weekEndS1 = [];
List<String> weekEndS2 = [];
SundayCalc() {
  initializeDateFormatting('es'); // This will initialize Spanish locale
  var referanceDate = DateTime(2021, 12, 27);
  var selectDate = DateTime(a1, a2, a3);
  int days = selectDate.difference(referanceDate).inDays;

  int l = 0;
  nofSundays = (days / 7).toInt();

  var lastDate = DateTime(a1, (a2) + 1, a3 - 1);

  sun.clear();
  for (var i = (8 - DateTime(a1, a2, a3).weekday);
      i < lastDate.day;
      i = i + 7) {
    sun.add(i);
  }
  int k = nofSundays;
  for (var j = 0; j < sun.length; j = j + 1) {
// ***********************************************
    week.add(DateFormat.yMd('es').format(DateTime(a1, a2, sun[j] - 6)) +
        ' TO ' +
        DateFormat.yMd('es').format(DateTime(a1, a2, sun[j] - 1)));
    WeekShiftChangeLogic(k);
    weekS1.add(WdutyElect[0]);
    weekS2.add(Wgeneral[0]);
    weekS3.add(Wsecond[0]);

// ****************************************************
    weekEnd.add(DateFormat.yMd('es').format(DateTime(a1, a2, sun[j])) +
        ' Sunday'); // print short date in Spanish format
    SundayShiftChangeLogic(k);
    weekEndS1.add(SdutyElect[0]);
    weekEndS2.add(Ssecond[0]);
    k = k + 1;
  }
}
