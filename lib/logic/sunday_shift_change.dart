List<String> SdutyElect = [];
List<String> Ssecond = [];

SundayShiftChangeLogic(int p) {
  // int p = 1;
  List<String> a1 = ['ANEESH KUMAR', 'BABY FRANCIS', 'JINEESH'];
  List<String> a2 = ['JINEESH', 'ANEESH KUMAR', 'BABY FRANCIS'];

  for (var i = 0; i < p; i++) {
    String x1 = a1[0];
    String x2 = a2[0];

    for (var j = 0; j < a1.length - 1; j++) {
      a1[j] = a1[j + 1];
      a2[j] = a2[j + 1];
    }
    a1[a1.length - 1] = x1;
    a2[a2.length - 1] = x2;
  }

  List<String> b1 = ['SANDEEP', 'JINEESH', 'PRINCE', 'MOHANAN'];
  List<String> b2 = ['PRINCE', 'MOHANAN', 'SANDEEP', 'JINEESH'];
  for (var i = 0; i < p; i++) {
    String x1 = b1[0];
    String x2 = b2[0];

    for (var j = 0; j < b1.length - 1; j++) {
      b1[j] = b1[j + 1];
      b2[j] = b2[j + 1];
    }
    b1[b1.length - 1] = x1;
    b2[b2.length - 1] = x2;
  }
  SdutyElect.clear();
  Ssecond.clear();
  SdutyElect.add(a1[0] + ' AND ' + b1[0]);
  Ssecond.add(a2[0] + ' AND ' + b2[0]);
}
