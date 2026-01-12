void main() {
  ISekil daire = Daire(yariCap: 5);
  print('daire alanı:${daire.alan()}');
  Kare kare = Kare(kenar: 6);
  print('kare alanı: ${kare.alan()}');
}

abstract class ISekil {
  // double alan(){return 3.13;}   içi doldurulmuş bir metot(somut metot) alt sınıflarda
  // override edilemsine gerek yok.Yani alt sınıflara eklenmese de hata vermez.
  double
      alan(); // içi boş bir metot(soyut metot) alt sınıflarda override edilmek zorunda yoksa 
      //alt sınfta hata oluşur.
}

class Daire extends ISekil {
  int yariCap;

  Daire({required this.yariCap});

  @override
  double alan() {
    return 3.14 * yariCap * yariCap;
  }
}

class Kare extends ISekil {
  double kenar;

  Kare({required this.kenar});
  @override
  double alan() {
    return kenar * kenar;
  }
}
