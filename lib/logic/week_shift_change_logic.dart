WeekShiftChangeLogic(int p) {
  // int p = 1;
  List<String> dutyElect = ['a', 'b', 'c'];
  List<String> general = ['d', 'e', 'f'];
  List<String> second = ['g', 'h', 'i'];
  for (var i = 0; i < p; i++) {
    String x1 = dutyElect[0];
    String x2 = general[0];
    String x3 = second[0];
    for (var j = 0; j < dutyElect.length - 1; j++) {
      dutyElect[j] = dutyElect[j + 1];
      general[j] = general[j + 1];
      second[j] = second[j + 1];
    }
    dutyElect[dutyElect.length - 1] = x1;
    general[general.length - 1] = x2;
    second[second.length - 1] = x3;
  }

  print(dutyElect);
  print(general);
  print(second);
}
