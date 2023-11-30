void main(List<String> args) {
  try {
    int sayi = 10 ~/ 3;
    //10 / 3 yazsaydık hata çıkacaktı. Tilde işareti
    //ile ondalıklı kısmını attı ve bir int miş gibi
    //davrandı. Bu yüzden hata almadık. Sonucuna bakalım.
    print(sayi);
  } catch (e) {
    print("hata meydana geldi " + e.toString());
  } finally {
    print("her halükarda çalışır, hata çıksada, çıkmasada");
  }
  print("devam eden kod");
}

/* SONUÇ HATA VERMEDİ AMA KOD HATA VERMEYE ÇOK MÜSAİT AŞAĞIDAKİ ÖRNEKLERİ İNCELEYELİM
3
her halükarda çalışır, hata çıksada, çıkmasada
devam eden kod
*/