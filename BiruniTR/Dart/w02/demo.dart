//Mapping-haritalama

void main(List<String> args) {
//c#, java =>cdixtionary/sözlük
//Anahtar / değer ikilisi olarak kullanılır.
//json convert işlemlerinde çok kullanulır.
  Map<int, String> ogrenciler = {
    1: "Ahmet",
    2: "Mustafa",
    4: "Şahin",
    6: "Şaziye",
    6: "Şadiye" //6 numarada önceden yüklü olan değer değişir.
  };

  ogrenciler[6] = "Mualla";

  Map<String, double> maaslar = {};

  for (var element in ogrenciler.entries) {
    print("${element.key}: ${element.value}");
  }

  for (var element in ogrenciler.keys) {
    print(ogrenciler[element]);
  }

  Map<dynamic, dynamic> satir1 = {"Id": 4, "Name": "C# book", "Date": DateTime};

  List<Map<dynamic, dynamic>> books = [{}, {}, {}];
}
