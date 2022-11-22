import 'package:duty_list_v1/logic/sunday_shift_change.dart';
import 'package:duty_list_v1/logic/week_shift_change_logic.dart';
import 'package:duty_list_v1/main.dart';
import 'package:intl/intl.dart'; // for date format
import 'package:intl/date_symbol_data_local.dart'; // for other locales

int nofSundays = 0;
List<int> sun = [];
List<String> week = [
  'i',
  'i',
  'i',
  'i',
  'i',
];
List<String> weekEndS1 = [
  'i',
  'i',
  'i',
  'i',
  'i',
];
List<String> weekEndS2 = [
  'i',
  'i',
  'i',
  'i',
  'i',
];
List<String> weekEndS3 = [
  'i',
  'i',
  'i',
  'i',
  'i',
];
List<String> weekEnd = [
  'i',
  'i',
  'i',
  'i',
  'i',
];
List<String> weekS1 = [
  'i',
  'i',
  'i',
  'i',
  'i',
];
List<String> weekS2 = [
  'i',
  'i',
  'i',
  'i',
  'i',
];
SundayCalc() {
  initializeDateFormatting('es'); // This will initialize Spanish locale
  var referanceDate = DateTime(2021, 12, 27);
  var selectDate = DateTime(a1, a2, a3);
  int days = selectDate.difference(referanceDate).inDays;
  int k = nofSundays;
  int l = 0;
  nofSundays = (days / 7).toInt();

  var lastDate = DateTime(a1, (a2) + 1, a3 - 1);
  // var lastDate = DateTime(2022, 1, 31);
  // print(lastDate);

  for (var i = (8 - DateTime(a1, a2, a3).weekday);
      i < lastDate.day;
      i = i + 7) {
    sun.add(i);
    // print(i);

  }
  for (var j = 0; j < sun.length; j = j + 1) {
    // print(DateTime(a1, a2, sun[j] - 6));

    print(DateFormat.yMd('es').format(DateTime(a1, a2, sun[j] - 6)) +
        ' to ' +
        DateFormat.yMd('es').format(DateTime(a1, a2, sun[j] - 1)));
    WeekShiftChangeLogic(k + l);
    print(WdutyElect[0]);
    print(Wgeneral[0]);
    print(Wsecond[0]);
    // print(DateTime(a1, a2, sun[j]));
    print(DateFormat.yMd('es').format(DateTime(a1, a2, sun[j])) +
        ' Sunday'); // print short date in Spanish format
    SundayShiftChangeLogic(k + l);
    print(SdutyElect[0]);
    print(Ssecond[0]);
    l = l + 1;
  }
}
