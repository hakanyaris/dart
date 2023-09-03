void main() {
  final user1 = BankUser('HAKAN', 15, 17);
  print(user1.money);
  final userNormal = User('kemal', 34);
  final userBank = BankUser('hakan', 200, 455);
  final userSpacial = SpacialUser('erhan', 15, 255, 34);
  userNormal.sayMoneyWithCampanyName();
  userBank.sayMoneyWithCampanyName();
  userSpacial.sayMoneyWithCampanyName();
}

abstract class IUser {
  // abstract class soyut sınıf demek
  final String name;
  final int money;

  IUser(this.name, this.money);

  void sayMoneyWithCampanyName() {
    print('$name $money kadar paranız var.');
  }
}

// User clasını IUser clasından miras aldık.
class User extends IUser {
  final String name;
  final int money;

  User(this.name, this.money)
      : super(name,
            money); //super metodu yani ana (IUser) class daki name ve money eşleştirir.
}

class BankUser extends IUser {
  final int bankingCode;
  //IUser ana klasında name ve money özellikleri  tanımlandığı için burada properties olarak tanımlamasak
  // olur sadce yapıcı metotda kullansak yeterlidir.
  BankUser(String name, int money, this.bankingCode) : super(name, money);

  void bankSpacialogic() {
    print(money);
  }
}

class SpacialUser extends IUser {
  final String name;
  final int money;
  final int bnkingCode;
  final int disccount;

  SpacialUser(this.name, this.money, this.bnkingCode, this.disccount)
      : super(name, money);
  //aşaıdaki fonksiyon ana class ta olduğu için burada tanımlamasam bile kullanabilirim.
  //void sayMoneyWithCampanyName(){
  //print('$name $money kadar paranız var.');

  // indirim fiyatı ne kadar discount indirim oranı demek aşağıdaki kodu kıs yoldan yazalım 2. aşamada

  // int calculateMonet(){
  //   return money-(money~/disccount);
  // }

  //2-

  int get calculateMonet => money - (money ~/ disccount);
}
