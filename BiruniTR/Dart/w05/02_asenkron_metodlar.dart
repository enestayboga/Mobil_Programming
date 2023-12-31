void main(List<String> args) async {
  print("Başlangıç");

  //isA burada Asenkron durumdadır.
  //isA();

  //isA burada senkron durumundadır.
  //await isA();
  /*
    print("Başlangıç");
  await isA_Senkron();
  print("Bitiş");
  */

  /*
  Future.delayed(Duration.zero, () async{
    var sonuc = await isB();
    print(sonuc);
  });
  
  print("Bitiş");
  */

  /*
    print("Başlangıç");
  await isA_Senkron();
  print("Bitiş");
  */

  isB().then((sonuc) {
    //...
    print(sonuc);
  }).onError((error, stackTrace) {
    //...
  }).whenComplete(() => null);
  
  print("Acil iş bitti");
  print("Bitiş");
}

//Asenkron bir metod tipi
Future isA() async {
  await Future.delayed(Duration(seconds: 0), () async {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(
          Duration(seconds: 1)); //Her turda bir saniye bekletir.
      print("İş A $i");
    }
  });
}

/*
//senkron bir metod tipi
Future isA_Senkron() async {
  await Future.delayed(Duration(seconds: 0), () async {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(
          Duration(seconds: 1)); //Her turda bir saniye bekletir.
      print("İş A_senkron $i");
    }
  });
}
*/

//Asenkron bir metod tipi
Future<String> isB() async {
  await Future.delayed(Duration(seconds: 0), () async {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(
          Duration(seconds: 1)); //Her turda bir saniye bekletir.
      print("İş B $i");
    }
  });
  return "İş B Bitti";
}
