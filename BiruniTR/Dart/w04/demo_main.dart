void main(List<String> args) {
  Kuyruk<double> reel = Kuyruk();
  Kuyruk<int> tamsayi = Kuyruk();
  Kuyruk<String> isim = Kuyruk();

  islem(1, "1");
}

void islem<T, K, V>(T a, T b) {
  return;
}

class SayiKuyrugu {
  List<int> list = [];
  void ekle(int a) {
    list.add(a);
  }

  int cikar() {
    var removed = list.first;
    list.remove(list.first);
    return removed;
  }
}

class Kuyruk<T> {
  List<T> list = [];
  void ekle(T a) {
    list.add(a);
  }

  T cikar() {
    var removed = list.first;
    list.remove(list.first);
    return removed;
  }
}
