//entry point/giriş metodu

void main(List<String> args) {
  //print(Faktoriyel(5));

  //int Sum(int a, int b) => a + b;

  //print(Sum(2, 2));

  //print(MatematikIslemi(Sum, 5, 6));

  // print(MatematikIslemi(Divide, 12, 4));

  // print(IslemSec(2)(12, 3));

  print(product(5, 8));
}

//fonksiyon/metodlar/metotlar/routine/yordam/procedure

//1. void metodlar, parametresiz/void method is np return type

Toplam1() {
  // void Toplam1()
  int a = 4;
  int b = 5;
  print(a + b);
}

//2. void metodlar, parametreli/daha fonksiyonel uncouple
//Daha kullanışlı ve verimlilerdir.

void Toplam2(int a, int b) {
  print(a + b);
  //işlemler
}

//3. tip/type metodlar, parametresiz/return olmak zorundadır.
//Tip/type ile başlamalıdır.

int Toplam4() {
  int a = 4;
  int b = 5;

  return a + b;
}

//4. tip/type metodlar, parametreli/ return olmalıdır.
//En esnek yapıda olanlardır.
//Fonksiyonel progrramlamada en çok tercih edilen yöntemdir.

int Toplam5(int a, int b) {
  //işlemler
  return a + b;
}

//5. Recursive / Özyinelemeli metodlar/Kendini çağıran methodlar
//Recursive methodun yapısı aşağıdaki gibi olmak zorundadır.

int Faktoriyel(int n) {
  if (n <= 0) {
    return 1;
  }

  return n * Faktoriyel(n - 1);
}

//6. Fat arrow/ lambda expression/ metodlar
int Sum(int a, int b) => a + b;

// '=>' işareti ise anlamını taşır. Açılımı aşağıdaki gibi

//int Sum(int a, int b){
//return a+b;
//}

double Divide(int a, int b) => a / b; // '=>' işareti ise anlamını taşır.

//7. Fonksiyon tipli, yada fonksiyon parametreli fonksiyonlar
//Methoda parametre olarak başka bir methodu gösterme yöntemi

int MatematikIslemi(Function(int, int) islem, int a, int b) {
  return islem(a, b);
}

Function IslemSec(int islemKod) {
  if (islemKod == 1) {
    return Sum;
  }
  if (islemKod == 2) {
    return Divide;
  }

  return Toplam5;
}

//8. Anonim/Anonymous metodlar/isimisiz metotlar
//Manda fonksiyonlarını geliştirilmiş hali
//Çok kullanışlı yapılardır.
//İç içe geçmiş(Nested) yapılarda çok görülür.

var product = (int a, int b) {
  //işlemler
  return a * b;
};
