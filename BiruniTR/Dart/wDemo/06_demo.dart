import 'dart:math';

void main(List<String> args) {
  //5 elemanlı birinci listemizi oluşturalım
  List<int> liste1 = List.filled(5, 0);
  //içerisine listenin uzunluğu kadar rastgele sayılar atayalım
  for (var i = 0; i < liste1.length; i++) {
    liste1[i] = Random().nextInt(10);
  }
  //5elemanlı ikinci listemizi oluşturalım
  List<int> liste2 = List.filled(5, 0);
  //içerisine listenin uzunluğu kadar rastgele sayılar atayalım
  for (int i = 0; i < liste2.length; i++) {
    liste2[i] = Random().nextInt(10);
  }

  //oluşturduğumuz iki listeyi bir tümListe altında birleştirelim
  List<int> tumListe = [...liste1, ...liste2];

  //tümlistenin içerisindeki sayıların karesini tutacak setimiz
  Set<int> karesi = {};

  //for döngüsü ile yapabiliriz
  for (int i = 0; i < tumListe.length; i++) {
    karesi.add(tumListe[i] * tumListe[i]);
  }

  //for in döngüsü ile yapabiliriz
  for (var list in tumListe) {
    karesi.add(list * list);
  }
  print(tumListe);
  print(karesi);
  //NOT: karesi bir set olduğu için elemanları tekrar etmeyecektir.
}

//ÖRNEK SONUÇ
/*
[9, 8, 8, 9, 3, 7, 7, 4, 0, 8]
{81, 64, 9, 49, 16, 0}

*/