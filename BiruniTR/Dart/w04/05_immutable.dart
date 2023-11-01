// Immutable = değiştirilemez sınıf demektir.
void main(List<String> args) {
  const s1 = Student(id: 1, fullname: "Aydın");
  //artık s1 adresinin içindekiler de değiştirilemez.

  Student s2 = Student(id: 1, fullname: "Aydın");
  const Student s3 = Student(id: 1, fullname: "Aydın");

  print(s1 == s3);//true
  print(s1 == s2);//false
  
}

/* class Student {

    ///immutable
  final int id;
  final String fullname;
  Student({required this.id, required this.fullname});
  void m() {
    ///...
  }
}
*/

class Student {
  const Student({required this.id, required this.fullname});
  //immutable

  final int id;
  final String fullname;
}
