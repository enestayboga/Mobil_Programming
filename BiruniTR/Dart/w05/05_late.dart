void main(List<String> args) {
  Student o1 = Student(2);
  o1.adi = "";
  print(o1.id); //crash
}

class Student {
  //risksiz
  //int? id;
  //String? adi;

  //late koyduğumuz zaman verdiğimiz parametre hiçbir zaman null olamaz diyoruz
  late int id; // late risklidir.
  late String adi;

  //final int sinif; hata alırız.
  //late kullanmadan nasıl yaparız??
  //yapıcı metodlar

  //değer vermeden hatasız bu şekil yazılır.
  final int sinif;
  Student(this.sinif);
}
