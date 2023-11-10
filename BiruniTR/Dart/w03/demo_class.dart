class Araba {
//varsayılan/default yapıcı metot açık yazılmadığı sürece gözükmeyebilir.
  Araba() {
    print("İlk burası çalışır ve obje oluşturulup hafızaya atılır.");
  }

  //İsimli yapıcı metodlar
  Araba.markaIleObjeOlustur(String marka) {
    this.marka = marka;
    print(
        "Araba.markaIleObjeOlustur(String marka) obje oluşturulup hafızaya atılır.");
  }

  Araba.markaModelIleObjeOlustur(String marka, String model) {
    this.marka = marka;
    this.model = model;
    print(
        "Araba.markaModelIleObjeOlustur(String marka, String model) obje oluşturulup hafızaya atılır.");
  }

  Araba.markaModelYilIleObjeOlustur(String mmarka, String model, int yil) {
    this.marka = marka;
    this.model = model;
    this.yil = yil;
    print(
        "Araba.markaModelYilIleObjeOlustur(String marka, String model, int yil) obje oluşturulup hafızaya atılır.");
  }

  factory Araba.FabrikaKurucusuIleOlustur(int aracKategori) {
    //...
    if (aracKategori == 0) {
      var a = Araba();
      a.tur = "Otomobil";
      return a;
    } else if (aracKategori == 1) {
      var a = Araba();
      a.tur = "SUV";
      return a;
    } else {
      var a = Araba();
      a.tur = "Ticari";
      return a;
    }
  }
  String? tur;
  String? marka;
  String? model;
  int? yil;

  //props
  //metodlar...
  //....
}
