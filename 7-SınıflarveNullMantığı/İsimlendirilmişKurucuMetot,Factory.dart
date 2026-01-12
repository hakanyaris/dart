// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {
  
  final araba1 = Araba.hiz();
  print(araba1.marka);
 

  final kullanici = Kullanici('ali');
  final araba2 = Araba.form(kullanici);
  print(araba2.marka);

  //---------------------------------------------
  Animal animal1 = Animal.name("cat", "Tom");
  (animal1 as Cat).speak(); // Output: Meow!

  Animal animal2 = Animal.name("dog", "Buddy");
  (animal2 as Dog).speak(); // Output: Woof!


}

class Araba {
  late String marka;
  late int fiyat;
  Araba(
    this.marka,
  );
  Araba.hiz(
      [this.marka =
          'ford']); //burda isimledirimiş kurucu metot kullandık.Bir sınıfta birden fazla isinlendirilmiş
  //kurucu metor kullanabiliriz.

  //factory kurcu metot ise geriye değer döndren kurucu metottur.(geriye sadece Araba sınıfı döndürür.veya
  //araba sınıfından türetiler alt  snıflar döndürülür.)
  factory Araba.form(Kullanici kullanici) {
    //burada kullanıcı sınıfın name sini araba sınıfının markasına eşitleyeceğiz.
    return Araba(kullanici.name);
  }
}

class Kullanici {
  final String name;
  late int yas;

  Kullanici(this.name);
}
//factory metota bir örnek daha.
///--------------------------------------------------------------
///_------------------------------------------------------------

class Animal {
  String name;
  Animal(this.name);
  factory Animal.name(String type, String name) {
    switch (type) {
      case "cat":
        return Cat(name);
      case "dog":
        return Dog(name);
      default:
        throw Exception("Invalid animal type");
    }
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);
  void speak() {
    print("Meow!");
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);
  void speak() {
    print("Woof!");
  }
}

