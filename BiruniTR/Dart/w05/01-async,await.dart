//async, await

import 'dart:io';

void main(List<String> args) async {
  //senkron programlama örneği

  print("İşler Başladı");

    Future.delayed(Duration(seconds: 1), () async {
      for (var i = 0; i < 10; i++) {
        await Future.delayed(
            Duration(seconds: 1)); //Her turda bir saniye bekletir.
        print("İş A $i");
      }
    });
  //Burada sen seviren süreye göre başla ama aşağıdakiler seni beklemeyecek şekilde yazdık.
  //A başlarken aynı zamanda B de aşağıda sanki A bitmiş gibi sıra kendine gelmiş gibi davranacak.

  print("İş A bitti.");

  Future.delayed(Duration(days: 0), () async{
    for (var i = 0; i < 15; i++) {
    await Future.delayed(Duration(seconds: 1)); //Her turda bir saniye bekletir.

    print("İş B $i");
  }
  });

  
  print("İş B bitti.");

  print("*******Çok acil bir bitti.*********");

  print("Tüm işler bitti.");
}
