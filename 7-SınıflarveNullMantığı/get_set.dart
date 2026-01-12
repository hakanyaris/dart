void main() {
  User musteri = User('vb', 13);
  
}

class User {
  final String isim;

 late  int _money; // KAPSULE ETMEK yani  propertiesi çağrılırken ve değer atanırken kontola altında tutmak

  int get money => _money; // çağrılırken

  set money(int? money) {
    //değer atanırken 1. yöntem
    /*if(money==null){
     // return; // if in içine sadece return yazsaydık ifden çıkıp money e değer atamazdı
       money=0;
    }
    _money = money;*/
    //2. yöntem
    _money = money == null
        ? 0
        : money; //burda _money=money e eşitliyor ama money == null işe  _money 0 yap değise _money i moneye eşitle.
  }

  final int? age;
  final String? city;
  late final String userCode;

  User(this.isim, this._money, {this.age, this.city}) {
    userCode = (city ?? 'ist') + isim;
  }
}
