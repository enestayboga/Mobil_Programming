import 'dart:html';

abstract class Matematik {
  final PI = 3.14;

  double toplama(double a, double b);
  double cikarma(double a, double b);
  double carpma(double a, double b);
  double bolme(double a, double b);

  //Virtual method (içi olmayan method)
  //soyutlama örneğidir. Sonradan doldurulması için bırakılır.

  //interface: Sınıf değildir, extends edilemez, concreate(somut) üye barındıramaz.
  //abstract: sınıftır, sanat metot barındırabilir, instance(kalıtım) alınmaz, sadece miras alınabilir.
  
  //dart dilnide Interface yoktur, abstract sınıfları kullanırız.
  //abstract sınıflar dart da hem extends hem de implamente edilebilir.
  

}

class HesapMakinesi {
  //...
}

abstract class IleriMatematik {
//abstract class IleriMatematik implaments Matemetik{}

  final e = 2.18;

  double integral(double f, double x); //virutal method
  double turev(double f, double x); //virutal method
  double sureklilik(double f, double x); //virutal method
}

class DortIslem extends Matematik implements IleriMatematik {

//class DortIslem implamets Matematik, IleriMatematik{}
//class DortIslem implaments IleriMatematik{}
//class DortIslem extends IleriMatematik{}
//class DortIslem extends HesapMakinesi implaments Matematik,IleriMatematik{}



  //DortIslemde override edilmesi gereken fonksiyonalr var uyarısı aldık
  //uyarı kutucuğyla otomatik override ettik.

  //implamantasyon şablonu sınıfa uygulamaktan başka birşey yapamaz.
  //aynı şekilde ilerimatematikte otomatik override ettik.

  @override
  double bolme(double a, double b) {
    return a / b;
  }

  @override
  double carpma(double a, double b) {
    return a * b;
  }

  @override
  double cikarma(double a, double b) {
    return a - b;
  }

  @override
  double toplama(double a, double b) {
    return a + b;
  }

  @override
  double get e => 2.18;

  @override
  double integral(double f, double x) {
    // TODO: implement integral
    throw UnimplementedError();
  }

  @override
  double sureklilik(double f, double x) {
    // TODO: implement sureklilik
    throw UnimplementedError();
  }

  @override
  double turev(double f, double x) {
    // TODO: implement turev
    throw UnimplementedError();
  }
}


