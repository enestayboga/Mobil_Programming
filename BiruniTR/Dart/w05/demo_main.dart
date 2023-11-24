void main(List<String> args) {
  print("İşler başladı");

  Future.delayed(Duration(seconds: 1), () async {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 1));
      print("is A $i");
    }
  });

  print("İş A bitti.");

  Future.delayed(Duration(seconds: 1), () async {
    for (var i = 0; i < 15; i++) {
      await Future.delayed(Duration(seconds: 1));
      print("İş B $i");
    }
  });

  print("İş B bitti.");

  print("****Çok acil bir iş bitti");
  print("Tüm işler bitti");
}
