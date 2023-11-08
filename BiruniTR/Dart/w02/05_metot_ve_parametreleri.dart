void main(List<String> args) {
  //01
  print(Sum1(4, 5));
  //02
  print(Sum2());
  print(Sum2(1));
  print(Sum2(1, 3));
  //03
  print(Sum3(1));
  print(Sum3(1, 2));
  print(Sum3(1, 2, 3));
  //04
  print(Sum4());
  print(Sum4(a: 1));
  print(Sum4(b: 2));
  print(Sum4(a: 1, b: 2));
  print(Sum4(a: 1, b: 2, c: 3));
  //05
  print(Sum5(1));
  print(Sum5(1, a: 1));
  print(Sum5(1, b: 2));
  print(Sum5(1, a: 1, b: 2));
  print(Sum5(1, a: 1, b: 2, c: 3));
  //06
  print(Sum6(1, a: 2, b: 3, c: 4));
  print(Sum6(1, a: 2, c: 4, b: 3));
  //07
  print(Sum7(1, a: 2));
  print(Sum7(1, a: 2, b: 3, c: 4));
  print(Sum7(1, a: 2, c: 4, b: 3));
}

//01-Zorunlu parametreler

int Sum1(int a, int b) {
  return a + b;
}

//02-Opsiyonel parametreli metodlar

int Sum2([int a = 0, int b = 0]) {
  return a + b;
}

//03-Hibrit/Karışık parametreli metodlar

int Sum3(int c, [int a = 0, int b = 0]) {
  return a + b + c;
}

//04-isimli parametreli + opsiyonel metodlar

int Sum4({int a = 0, int b = 0, int c = 0}) {
  return a + b + c;
}

//05-hibrit-isimli parametreli + opsiyonel metodlar

int Sum5(int d, {int a = 0, int b = 0, int c = 0}) {
  return a + b + c;
}

//06-hibrit-isimli parametreli + zorunlu metodlar

int Sum6(int d, {required int a, required int b, required int c}) {
  return a + b + c;
}

//07-hibrit-isimli parametreli + zorunlu/opsiyonel metodlar

int Sum7(int d, {required int a, int b = 0, int c = 0}) {
  return a + b + c;
}