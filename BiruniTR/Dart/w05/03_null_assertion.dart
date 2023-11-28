void main(List<String> args) {
  int a = getNum()!; // "!" null assertion,

  var t1 = Test1();
  int a1 = t1.a!;
  print(a);

  int s1 = t1.list!.first!;
  // "! işareti koymadan önce hata veriyordu."
  //hem listeye hem de first e "!" koymamızın Sebebi
  //aşağıdaki classda biz hem liste null olabilir hem de elemanları dedik.



  
}

int? getNum() {
  return 5;
}

class Test1 {
  int? a;
  List<int?>?list = [10, 2, 6, null];
}
