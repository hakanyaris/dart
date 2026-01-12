void main() {
  Araba araba = Araba('DACİA', 4);

  print(araba.TekerSayisiniArttir(araba));
  araba.markaYazdir(araba);

  Araba araba2 = Araba('Renault', 6);
  print(araba + araba2);
}

class Araba with ArabaMixin, ArabaMixin2 {
  late int tekerSayisi;
  late String marka;
  Araba(this.marka, this.tekerSayisi);

  int operator +(Araba araba) {
    int ilkTeker = this.tekerSayisi;
    int toplam = this.tekerSayisi + araba.tekerSayisi;
    return toplam;
  }

  bool operator ==(Object obje) {
    return obje is Araba && this.tekerSayisi == obje.tekerSayisi;
    // ÇOK ÖNEMLİ obje is Araba yazamasaydım  obje. tekerSayısı çıkmazdı çünkü objebin Araba olduğunu program anlamazdı.
  
  
 
  }
}

mixin ArabaMixin {
  late int vites;
  int TekerSayisiniArttir(Araba araba) {
    return araba.tekerSayisi + 2;
  }
}

mixin ArabaMixin2 {
  void markaYazdir(Araba araba) {
    print(araba.marka);
  }
}
