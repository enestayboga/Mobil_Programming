import 'ders.dart';

void main(List<String> args) {
  Ders ders1 = Ders();
  Ders ders2 = Ders();
  Ders ders3 = Ders();

  //Instance üyeler obje üzerinden erişilebilir.
  ders1.setKod = 1;
  ders1.setAdi = "Mobile";

  ders2.setKod = 2;
  ders3.setAdi = "OOP";

  //Statik üyeler sınıf isminden erişilir.
  Ders.setKapasite = 24;
  Ders.setOgrenciSayisi = 22;

  //Not: Instance üyeler kullanılırken obje üzerinden,
  //Statik üyeler kullanılırken sınıf isimlerinden erişim sağlanır.

  print(ders1.getAdi);
  print(Ders.getKapasite);

  print(ders2.getAdi);
  print(Ders.getKapasite);

  print(Ders.uniKod);
  Ders.uniKod = 2; //Tamamı için değiştirildi.

  print(Ders.hangiUniversite());
  Ders.setKapasite = 60; // alakalı alakasız tüm kapasiteyi değiştirdik.
}
