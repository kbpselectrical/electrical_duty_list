import 'package:duty_list_v1/main.dart';

int nofSundays = 0;

SundayCalc() {
  var referanceDate = DateTime(2021, 12, 27);
  var selectDate = DateTime(a1, a2, a3);
  int days = selectDate.difference(referanceDate).inDays;

  nofSundays = (days / 7).toInt();

  var lastDate = DateTime(a1, (a2) + 1, a3 - 1);
  // var lastDate = DateTime(2022, 1, 31);
  print(lastDate);
  List<int> sun = [];
  for (var i = (8 - DateTime(a1, a2, a3).weekday);
      i < lastDate.day;
      i = i + 7) {
    sun.add(i);
    // print(i);

  }
  for (var j = 0; j < sun.length; j = j + 1) {
    // print(DateTime(a1, a2, sun[j] - 6));

    // print(DateTime(a1, a2, sun[j]));
  }
}
