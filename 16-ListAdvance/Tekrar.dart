// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../10-extension/TekrarExtension.dart';

import '../11-Alistirma/alistirmalar15/model/Model.dart';
import '../7-SınıflarveNullMantığı/7-SınıflarveNullMantığı.dart';


void main() {

  final Bisikletler = [
    BisikletModel(
        BiskletModelleri: BiskletModelleri.bisan,
        adi: '110C',
        fiyati: 5575,
        sehir: 'ığdır',
        ikinciElMi: true,
        kullanici:[User5(age: 5,city: 'asd',money: 45, name: 'asd' ),User5(age:6,city: 'asd',money: 34,name: 'asd' )]
        ),
    BisikletModel(
        BiskletModelleri: BiskletModelleri.mosso,
        adi: '111C',
        fiyati: 4590,
        sehir: 'ığdır'),
    BisikletModel(
        BiskletModelleri: BiskletModelleri.bisan,
        adi: '112C',
        fiyati: 8200,
        sehir: 'ığdır'),
    BisikletModel(
        BiskletModelleri: BiskletModelleri.umit,
        adi: '113C',
        fiyati: 3900,
        sehir: 'ığdır'),
    BisikletModel(
        BiskletModelleri: BiskletModelleri.bisan,
        adi: '114C',
        fiyati: 4575,
        sehir: 'ığdır'),
    BisikletModel(
        BiskletModelleri: BiskletModelleri.bisan,
        adi: '115C',
        fiyati: 6000,
        sehir: 'ığdır')
  ];

  final sayi =
      Bisikletler.where((element) => element.ikinciElMi == false).length;
  print(sayi);
  final liste =
      Bisikletler.where((element) => element.ikinciElMi == false).join();
  for (var sayi in Bisikletler) {
    print(sayi);
  }
  ;

  final ikinciElVarmi =
      Bisikletler.any((element) => element.ikinciElMi == true);
  print(ikinciElVarmi);

  final BisikletEkledik = BisikletModel(
      BiskletModelleri: BiskletModelleri.bisan,
      adi: '114C',
      fiyati: 4575,
      sehir: 'ığdır');

// iki BisikletModel nesnesini karşılaştırmak  aynı olsa bile false çıkar.(13.ders DegerveReferans tip incele)
  final BuBisikletMevcutMu = Bisikletler.contains(BisikletEkledik);
  print(BuBisikletMevcutMu);
  //------
  final BisanFiyati500Buyuk = Bisikletler.where((element) =>
      element.BiskletModelleri == BiskletModelleri.bisan &&
      element.fiyati > 5000).join();
  print(BisanFiyati500Buyuk);
  //------------------------------------------------
  Bisikletler.sort((a, b) => a.fiyati.compareTo(b.fiyati));
  print(Bisikletler);
  var kullanicilar = Bisikletler.expand((element) => element.kullanici);
  print(kullanicilar);
}

//-----------------------------------------------------------------
//-----------------------------------------------------------------
class BisikletModel {
  final BiskletModelleri;
  final String adi;
  final double fiyati;
  String? sehir;
  bool ikinciElMi;
  List<User5> kullanici;

  BisikletModel({
    required this.BiskletModelleri,
    required this.adi,
    required this.fiyati,
    this.sehir,
    this.ikinciElMi = false,
    this.kullanici = const [],
  });
  @override
  bool operator ==(Object obje) {
    return obje is BisikletModel &&
        BiskletModelleri == obje.BiskletModelleri &&
        adi == obje.adi &&
        fiyati == obje.fiyati &&
        ikinciElMi == obje.ikinciElMi;
  }

  @override
  String toString() {
    return '$adi-$fiyati';
  }
}

enum BiskletModelleri { bisan, salcano, mosso, umit }
