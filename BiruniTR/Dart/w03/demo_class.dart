import 'ogrenci.dart';

class Ders {
  int? _kod;
  String? _adi;

  static int? _kapasite;
  static int? _ogrenciSayisi;

  List<Ogrenci> ogrenciler = [];

  set setKod(int? kod) {
    this._kod = kod;
  }

  get getkod {
    return this._kod;
  }

  set setAdi(String? adi) {
    this._adi = adi;
  }

  get getAdi {
    return this._adi;
  }

  static set setKapasite(int? kapasite) {
    _kapasite = kapasite;
  }

  static get getKapasite {
    return _kapasite;
  }
}
