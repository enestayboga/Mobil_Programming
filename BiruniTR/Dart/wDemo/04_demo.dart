void main(List<String> args) {
  print("Toplam= " + sayilariTopla(2, 3).toString());
  print("Toplam= " + sayilariToplaFatArrow(2, 3).toString());
}

//normal fonk. yazımı
int sayilariTopla(int x, int y) {
  int sonuc = x + y;
  return sonuc;
}

//Fat arrow yazım şekli
int sayilariToplaFatArrow(int x, int y) => x + y;
