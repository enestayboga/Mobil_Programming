//FORMAT HATASI VERDİRİYORUZ, BİR ALTTAKİ RESMİ İNCELEYİN.

void main(List<String> args) {
  try {
    int sayi = 10 ~/ int.parse("eser");
    //10 ~/ eser ile yazdığımızda hata yokmuş gibi gözüküyor
    //Hata verecek, sonuçlarını bir inceleyelim

    print(sayi);
  } catch (e) {
    print("hata meydana geldi " + e.toString());
  } finally {
    print("her halükarda çalışır, hata çıksada, çıkmasada");
  }
  print("devam eden kod");
}

/* SONUÇ
hata meydana geldi FormatException: Invalid radix-10 number (at character 1)
eser 
^
//Artık Hatamızın FormatException olduğunu biliyoruz.
//Çıkabilecek hatalara özel durumlar oluşturabiliriz.


her halükarda çalışır, hata çıksada, çıkmasada
devam eden kod

*/
