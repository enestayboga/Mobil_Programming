void main(List<String> args) {
  List<int> list;

  //object promotion
  //program algoritmanın içine bakarak null olup olamayacağını kontrol eder.

  if (DateTime.now().hour == 5) {
    list = [1, 2, 3];
  } else {
    // list = getList()!;
    list = [1, 2];
  }
  print(list.length);
}

List<int>? getList() {
  return null;
}
