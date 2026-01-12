void main() {
  Kullanici5 kullanici5 = Kullanici5();

  kullanici5.deger = 2;
  print(kullanici5.deger);
}

class Kullanici5 {
  late int _deger;

  int get deger => _deger;

  set deger(int deger) {
    _deger = deger;
  }
}
