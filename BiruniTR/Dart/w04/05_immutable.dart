//Immutable = değiştirilemez sınıf demektir.
//Güvenlik için tercih edilir.
//Const finaldeki farkı adreslenmiş değişkeni değil, içindeki parametleri de değiştiremeyiz.

void main(List<String> args) {
  const s1 = Student(id: 1, fullname: "Aydın");
  //artık s1 adresinin içindekiler de değiştirilemez.

  Student s2 = Student(id: 1, fullname: "Aydın");
  const Student s3 = Student(id: 1, fullname: "Aydın");

  print(s1 == s3); //true 
  //sabitler eğer değerleri aynıysa adresler eşitlenir ve tek kopyada tutulurlar.(const)
  print(s1 == s2); //false
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
  //Eğer metodu const yapacaksan dışarıdan erişilemez olabilmesi için (immutable şartı)
  //içindeki parametreleri final yapmak zorundasım!!!

  final int id;
  final String fullname;
}
