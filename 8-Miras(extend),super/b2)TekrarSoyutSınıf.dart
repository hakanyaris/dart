void main() {
  Daire daire = Daire(5.5, 8);
  print(daire.alan());
}

abstract class ISekil {
  double taban;
  double yukseklik;

  //soyut sınıfta belirlenen kurucu metot alt sınıflarda da belirlenmek zorundadır.
  ISekil(this.taban, this.yukseklik);

  //soyut sınıflarda belirlenen içi doldurulmuş somut metotlar alt sınıflarda eklenmek zorunda değil
  //ve alt sınıflarda override edilip ezilebiir.(yani yeniden içi doldurularak ust sınıf metot ezilir. )
  double alan() {
    return taban * yukseklik;
  }
}

class Daire extends ISekil {
  Daire(super.taban, super.yukseklik);
  @override
  double alan() {
    return 3.14 * yukseklik;
  }
}

class Kare extends ISekil {
  Kare(super.kenar1, super.kenar2);

  @override
  double alan() {
    // TODO: implement alan
    throw UnimplementedError();
  }
}
