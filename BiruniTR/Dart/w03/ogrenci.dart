//class decleration/defination => sınıfın tanımlanması
//Sınıf != obje, nesne

class Ogrenci {
//Üyeler/Sınıfın içindeki herşey
//01-Statik üyeler (Sonradan anlatılacak)

//02-Instance/kopya-örnek üyeleri
//  02.1- Field, veri alanları

  int? no;
  String? ad;
  String? soyad;
  bool? cinsiyet;
//  02.2- Properties, Özellikler => metot ile değişkenler arası yapılardır.
//  getter ve setter bir propertiesdir.

  set setNo(int No) {
    this.no = no;
  }

  int? get getNo {
    return this.no;
  }
  
}
