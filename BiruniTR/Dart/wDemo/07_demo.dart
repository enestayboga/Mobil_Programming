//BU ÖRNEKTE İSE AWAIT KULLANDIK
//FUTURE UN İŞLEMİNİN BİTMESİNİ BEKLEDİ
//SONRA PRİNT YAZILDI


void main(List<String> args) async {
  Future<int> deger = Future<int>(() {
    int toplam = 0;
    for (var i = 0; i < 1000000000; i++) {
      toplam = i + toplam;
    }
    return toplam;
  });

  print(await deger);
  print("ben future u bekleyeceğim");
}

/*
SONUÇ
499999999500000000
ben future u bekleyeceğim

*/