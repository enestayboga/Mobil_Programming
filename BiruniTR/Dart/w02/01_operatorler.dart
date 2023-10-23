void main(List<String> args) {
  //Operatörler 3e ayrılırlar. Binary, unary ve ternary

  // A-binary operatörler/ikili op.

  // 01-Aritmetik Op. +, -, *, /, %
  // => sol_operand - operator - sag_operand => 1 + 2
  // => geriye sayısal değer döndür

  double a = 1 / 9 + 8 * 9 - 9 + 5 - 15 % 3;

  // 02-Assignment/Atama Operatorleri =>
  // =, +=, -=, *=, /=,  %=
  // => sol_operand operator sag_operand
  // => int a; a = 2; // atama yapar

  double a2 = 5;
  a2 *= 5; //a2 = a2 * 5;
  a2 += 1; //a2 = a2 + 1;

  // 03-Relational/İlişkisel operatorler
  // =>  <, >, <=, >=, !=, ==,
  // => sol_operand operator sag_operand
  // => 1 + 2    => geriye sayısal boolean döndür (çok önemli)

  bool isOk1 = 1 != 1; // isOk1 => is Okey 1

  // 04-Logical/Mantıksal operatorler
  // =>  &&, ||
  // => sol_operand operator sag_operand
  // => 1 + 2    => geriye sayısal boolean döndür

  bool isOk2 = ((1 < 5) && (8 == 9)) || (9 >= -9);

  //-------------------------------------------------------

  // B-unary operatorler, tekli

  // 04-Logical/Mantıksal operatorleri
  // =>  ! => operator sag_operand (Tek bir tarafda operand var)
  // => !(true/false)
  // => geriye sayısal boolean döndür

  bool isOk3 = !(((1 < 5) && (8 == 9)) || (9 >= -9));

  // (!) -> operator görevi görür
  // (((1 < 5) && (8 == 9)) || (9 >= -9)); ise sag_operand

  // 05-Increment/Decrement/ Arttırma/Azaltma operatorleri
  // =>    ++, --
  // => a++, --a,
  // => geriye genelde sayısal değer döner

  double a3 = 5;
  a3++;
  a3 = ++a3 + --a2 * (a--);

  //-------------------------------------------------------

  // C-ternary operatorler, 3 lü

  String cinsiyet = "Bayan";
  double yasSinir = cinsiyet == "Erkek" ? 1 : 0;

  // (==) 1. operatör, (?) 2. operatör, (:) 3. operatör
}
