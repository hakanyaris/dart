// extdend , implements ve with fakı ÖNEMLİ
// https://medium.com/@manoelsrs/dart-extends-vs-implements-vs-with-b070f9637b36
void main() {
  Ilkokul ilkokul =
      Ilkokul('ad1', 'soyad1', 'adres1', 5443718892, 'serbersEtkinlik1');

  Ortaokul ortaokul = Ortaokul('ad2', 'soyad2', 'adres2', 543718893, 'klup1');

  Lise lise = Lise('ad', 'soyad', 'adres', 5443718894, 'secmeliDers1');

  Dacia dacia =
      Dacia(); //bir alt clas extends ile bağlandığında üst clasın bütün değişken ve metotların kullnabilir.
  dacia.calistir();
}

class Ogrenci {
  late String ad;
  late String soyAd;
  late String Adres;
  late int telefon;
  Ogrenci(this.ad, this.soyAd, this.Adres,
      this.telefon); //ana clasta kurucu metot varsa alt
  //klaslarda da kendi kurucu metotları olmak zorunda
  
  // void say(); gibi içi boş soyut yöntemler uyguanamaz bu ancak abstract sınıflara uygulanır.
}

// extends yaptığımız sınıflar üst sınıftaki değişken ve  metotları
// kendi sınıfında yazma mecburiyeti yoktur ve yazmasa da kullanabilr.
class Ilkokul extends Ogrenci {
  late String serbersEtkinlik;
  Ilkokul(
      String ad, String soyad, String adres, int telefon, this.serbersEtkinlik)
      : super(ad, soyad, adres,
            telefon); // super bir ust clastakileri alır this aynı clastaleri alır.
}

class Ortaokul extends Ogrenci {
  late String klup;
  Ortaokul(String ad, String soyad, String adres, int telefon, this.klup)
      : super(ad, soyad, adres,
            telefon); // super bir ust clastakileri alır this aynı clastakileri alır.
}

class Lise extends Ogrenci {
  late String secmeliDers;
  Lise(super.ad, super.soyAd, super.Adres, super.telefon, this.secmeliDers);
  //sadece bu satır yazsak da diğer satırlara gerek yoktu.dikkat edersek Ama bu sınıftaki
  //SeçmeliDers değişkenini this ile tanımladık alt sınıf içindeki  değişkeni kurucu meototuna this ile almak
  //zorundadır.yoksa hata verir.
  //-----------------------------------------------------------------------
  // Lise(String ad, String soyad, String adres, int telefon, this.secmeliDers)
  //     : super(ad, soyad, adres,
  //           telefon); // super bir ust clastakileri alır this aynı clastaleri alır.
}

//------------------------------------------------------
class Araba {
  late int en;
  late int boy;

  void calistir() {
    print('çaşıştı');
  }
}

class Dacia extends Araba {}
