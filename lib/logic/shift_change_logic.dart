ShiftChangeLogic() {
  int p = 1;
  List<int> a = [1, 2, 3];
  for (var i = 0; i < p; i++) {
    int x = a[0];
    for (var j = 0; j < a.length - 1; j++) {
      a[j] = a[j + 1];
      a[j] = x;
    }
  }
  print(a);
}
