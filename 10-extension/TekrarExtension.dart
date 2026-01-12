// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {
  Bisiklet bisiklet = Bisiklet(vites: 5, jantBoy: 27);
  bisiklet.say(6);

  aylar seciliAy = aylar.eylul;

  if (seciliAy.seciliAy('eylul')) {
    print("aylardan eylül");
  }
}

class Bisiklet {
  int vites;
  int jantBoy;
  Bisiklet({
    required this.vites,
    required this.jantBoy,
  });
}

extension on Bisiklet {
  void say(int sayi) {
    print(sayi);
  }
}

enum aylar {
  ocak,
  subat,
  mart,
  nisan,
  mayis,
  haziran,
  temmuz,
  agustos,
  eylul,
  ekim,
  kasim,
  aralik
}

extension on aylar {
  bool seciliAy(String ay) {
    return this.name == ay;
  }
}
