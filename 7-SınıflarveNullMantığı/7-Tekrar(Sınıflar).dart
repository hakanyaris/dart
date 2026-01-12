void main() {
  List<int?> bosliste = [
    5,
    null,
    7,
    9
  ]; //listenin içindeki int değerleninden biri boş olabilir.
  List<int>? bosliste2; // listenin kendis boş olabilir

  String metin;
  //print(metin.length);  çalışmaz çünkü metin değeri boş (null) gelebilir.

  String? metin2;
  print(metin2?.length);

  //print(karaktersayisi(null));  yazarsak null hata verir çünkü String str null alamaz dedik String? str yaparsak null alabilir.

  Kullanici2 kullanici2 = Kullanici2(5);
  print(kullanici2.a);
  // kullanici2.a = 8; yapamayız çünkü a  değişkeni clasın  içinde final olarak tanımlanmış
  Kullanici3 kullanici3 = Kullanici3('asdda');
  // print(kullanici3.a);  // aşağıda late yazarak luşturduğumuz a burada değer atamadan yazdırırsak.hata mesajı verir (LateInitializationError: Field 'a' has not been initialized.)
  Kullanici4 kullanici4 = Kullanici4();
  List<Kullanici3> listemiz2 = kullanici4.listmiz;
  for (var obje in listemiz2) {
    print(obje.a);
  }

  Kullanici5 kullanici5 = Kullanici5();
}
//---------------------------------------------
//---------------------------------------------
//---------------------------------------------

int karaktersayisi(String str) {
  return str.length;
}

class Kullanici {
  //  int adi;// bu şekilde null hatası verir kullanmayız ama aşağıdaki consakcır ile kullanabilriz.
  //  Kullanici(int this.adi){} // bu kullanım ile null güvenliği hatası vermez
  //  Kullanici({required int this.adi}) {} // bu kullanım ile null güvenliği hatası vermez
  //  Kullanici([required int this.adi]){} // bu kullanım ile null güvenliği hatası verir.
}

class Kullanici2 {
  final int
      a; // final ile tanımladığımız  veya çıplak tanımladığmız değişkeni  consakcırda  kullanıcıdan istemeliyiz
  // yoksa  null hatası verir.
  Kullanici2(int this.a) {}
  //Kullanici2({required int this.a}) {}  veya bu şekilde kullanabiliriz.
}

class Kullanici3 {
  late String a;
  Kullanici3(String this.a) {}
  // int SatirSayisi(String this.a) {// this.a diyemeyiz çünkü sınıf değişkenin sadece kurucu metotta kullanabiliriz.
  //
  //   return a.length;
  // }
}

class Kullanici4 {
  late String _ad;
  late int _id;
  Kullanici() {}

//farklı bir kullanım. sınıf içimde liste tanımlama ve kullanımı
  List<Kullanici3> listmiz = [
    Kullanici3('ali'),
    Kullanici3('Ahmet'),
    Kullanici3('Kemal')
  ];
}

// get set
class Kullanici5 {
  late String _ad;
  // String get ad{return _ad;}
  //veya
  String get ad => _ad;

  //----------------------
  /// set kullanımı
  set ad(String ad) {
    ad == _ad;
  }

  //veya
  set ad2(String ad2) => ad2 == _ad;
}
