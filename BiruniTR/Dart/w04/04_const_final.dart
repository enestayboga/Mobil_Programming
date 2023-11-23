void main(List<String> args) {
  var a1 = 1;
  int a2 = 1;
  // int _a2 = 1; yazarsak private olur sınıf dışına çıkamaz.

  final int a3; //Bir kez değişebilir. Null değer atayabiliriz.
  a3 = 5;

  const a4 = 1; //Direkt değer atanmalı, Bir kez değişebilir. Null değer ATANAMAZ.
  
final Student s1 = Student(id: 1, fullname: "Ahmet");
// burada finally olan şey s1 adresidir.
//classın içindekiler finally olmaz

Student s3 = Student(id: 1, fullname: "Aydın");
Student s4 = Student(id: 1, fullname: "Aydın");
print(s3==s4);

//const Student s2 = Student(id: 5, fullname: "Mualla");


}



class Student {
  int? id;
  String? fullname;
  Student({required this.id, required this.fullname});
  void m() {
    //...
  }
}
