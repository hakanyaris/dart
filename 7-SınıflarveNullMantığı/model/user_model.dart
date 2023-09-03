class User2 {
  final String name;

  int _money; // KAPSULE ETMEK yani  propertiesi çağrılırken ve değer atanırken kontola altında tutmak

  int get money => _money; // çağrılırken

  set money(int? money) {
    //değer atanırken
    if (money == null) {
      return;
      //_money=0;// if in içine sadece return yazsaydık
    }
    _money = money;
  }

  final int? age;
  final String? city;
  late final String userCode;

  User2(this.name, this._money, {this.age, this.city}) {
    userCode = (city ?? 'ist') + name;
  }
}



