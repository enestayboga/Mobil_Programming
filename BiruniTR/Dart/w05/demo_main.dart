void main(List<String> args) async {
  print("Başlangıç");
  // await isA();
  /*
  ///Senkron
  var sonuc = await isB();
  print(sonuc);
  print("Bitiş");
  */
  //Asenkron
  Future.delayed(Duration.zero, () async {
    var sonuc = await isB();
    print(sonuc);
    print("Bitiş");
  });
}

//Asenkron
Future isA() async {
  await Future.delayed(Duration(seconds: 0), () async {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(
          Duration(seconds: 1)); //Her turda bir saniye bekletir.
      print("İş A $i");
    }
    print("İş A bitti");
  });
}

Future<String> isB() async {
  await Future.delayed(Duration(seconds: 0), () async {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(
          Duration(seconds: 1)); //Her turda bir saniye bekletir.
      print("İş B $i");
    }
  });
  return "İş B bitti";
}
