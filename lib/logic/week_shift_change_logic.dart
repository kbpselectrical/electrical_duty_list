List<String> WdutyElect = [];
List<String> Wgeneral = [];
List<String> Wsecond = [];
WeekShiftChangeLogic(int p) {
  // int p = 1;
  List<String> a1 = [
    'BABY FRANCIS, ANEESHKUMAR AND JINEESH',
    'BABY FRANCIS, JINEESH AND PRINCE',
    'ANEESHKUMAR, JINEESH AND SANDEEP '
  ];
  List<String> a2 = [
    'MOHANAN, PRINCE AND EMMANUEL',
    'MOHANAN, SANDEEP AND EMMANUEL',
    'MOHANAN, JINEESH AND EMMANUEL'
  ];
  List<String> a3 = [
    'JINESH AND SANDEEP',
    'ANEESHKUMAR AND JINEESH',
    'BABY FRANCIS AND PRINCE'
  ];
  for (var i = 0; i < p; i++) {
    String x1 = a1[0];
    String x2 = a2[0];
    String x3 = a3[0];
    for (var j = 0; j < a1.length - 1; j++) {
      a1[j] = a1[j + 1];
      a2[j] = a2[j + 1];
      a3[j] = a3[j + 1];
    }
    a1[a1.length - 1] = x1;
    a2[a2.length - 1] = x2;
    a3[a3.length - 1] = x3;
  }
  WdutyElect.clear();
  Wgeneral.clear();
  Wsecond.clear();
  WdutyElect.add(a1[0]);
  Wgeneral.add(a2[0]);
  Wsecond.add(a3[0]);
  // print(a1);
  // print(a2);
  // print(a3);
}
