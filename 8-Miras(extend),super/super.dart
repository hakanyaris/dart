void main(List<String> args) {
  Evlat nesne = Evlat();
  //1-
  nesne.newNumber();
  //2-
  nesne.bilgiVer();
  nesne.dogal(); //alt sınıftan üst sınıfın  metotdunu çağırabiliriz.

  //3-
  Bilgi x = Bilgi("Brad", 20);
  x.kendiniTanit();

  Eleman y = Eleman("Tom", 30, 4000);
  y.kendiniTanit();
}

//1- Dart super anahtar kelimesi, halihazırda alt sınıfın zaten üst sınıfında bulunan bir değişkeni olduğunda, üst
//sınıftaki değişkene erişmek için kullanılabilir.
class Ana {
  int number = 50;

  void bilgi() {
    print("Üst sınıf metodu çalıştı.");
  }

  void dogal() {
    print('doğal ');
  }
}

class Evlat extends Ana {
  int number = 100;
  void newNumber() {
    print(
        super.number); //1-üst sınıftaki değişkene erişmek için kullanılabilir.
  }

//2-Bir alt sınıf, üst sınıfta zaten mevcut olan bir yöntemi içeriyorsa, buna metodu ezme (geçersiz kılma) denir.
// Alt sınıf nesnesinden yönteme yapılan çağrıyı geçersiz kılmak, her zaman metodunun alt sınıf sürümünü çağırır.
//Ancak, super anahtar sözcüğünü kullanarak, yöntemin üst sınıf sürümünü çağırmamıza izin verilir.
  void bilgi() {
    print("Alt sınıf metodu çalıştı.");
  }

  void bilgiVer() {
    //Bu, alt sınıf metodunu çağırır
    bilgi();
    //Bu, üst sınıf yöntemini çağırır
    super.bilgi();
  }
}

//3-Bir alt sınıf, değişkenleri ve yöntemleri üst sınıfından devralır, ancak üst sınıf kurucu metodunu alt sınıfta miras
// alamaz. Üst sınıf kurucu metotlarını alt sınıfta çağırabilmek için super() kullanılır. Böylelikle super() kurucu metodu
// ile, bir alt sınıf yapıcısının, üst sınıfın bağımsız değişkensiz ve parametreli kurucusunun çağrılmasına izin verir.

//Eğer üst sınıftaki kurucu metot argümanlar alıyorsa, o zaman üst sınıfın parametreli hale getirilmiş kurucusunu
// çağırmak ve istenen argümanları iletmek için alt sınıf kurucusunda parametrelileştirilmiş super() metodunu kullanmamız
// gerekir. Bunu da :super yazarak sağlayabiliriz:

class Bilgi {
  String isim;
  int yas;
  Bilgi(this.isim, this.yas);

  void kendiniTanit() {
    print("Üst sınıfın kurucu metodu çalıştı");
    print("Benim adım $isim ve yaşım $yas");
  }
}

class Eleman extends Bilgi {
  int maas;
  // super ile ortak değerleri miras aldık
  Eleman(String name, int age, this.maas) : super(name, age);

  @override
  void kendiniTanit() {
    print("Benim adım $isim, yaşım $yas ve maaşım $maas dolar");
  }
}
