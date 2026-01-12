void main() {}

class Bisiklet {
  double kadroBoy;
  double jantBoy;
  String frenTur;
  Bisiklet(this.frenTur, this.jantBoy, this.kadroBoy);

  // void say(int kadroBoy) {
  //   print(kadroBoy);
  // }
}

class SehirBisikleti implements Bisiklet {
  String frenTur;

  double jantBoy;

  double kadroBoy;
  SehirBisikleti(this.frenTur, this.jantBoy, this.kadroBoy);
  // : super(frenTur, kadroBoy, jantBoy);

  // @override
  // void say(int kadroBoy) {
  //   // TODO: implement say
  // }
}
