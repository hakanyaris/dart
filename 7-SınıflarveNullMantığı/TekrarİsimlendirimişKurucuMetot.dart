void main() {
  Bitki bitki = Bitki(grup: 'grup');

  bitki = Bitki.kok();
  print(bitki.grup);
}

class Bitki {
  String grup;
  String? govde;
  Bitki({required this.grup, this.govde});
  //---------------------------------
  Bitki.buyu(this.grup);
  //---------------------------------
  factory Bitki.kok() {
    return Bitki(grup: 'asd');
  }
}
