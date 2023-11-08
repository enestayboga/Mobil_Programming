//Set veri yapısı == küme yapısı==koleksiyon
//Küme yapısındaki gibi bir elemandan iki tane olmaz.
//Eleman tekrarlama olmaz.
void main(List<String> args) {
  //Sıralı listeler değillerdir, eleman tekrarlamaz.

  Set<int> kume1 = {1, 2};
  kume1.add(6);
  kume1.add(7);

  print(kume1.contains(2));
  kume1.forEach((element) {
    print(element);
  });

  for (var element in kume1) {
    print(element);
  }
  print(kume1);

  List<int> list1 = [4, 5, 6, 7, 9];
  kume1.addAll(list1);
  print(kume1);

  
}
