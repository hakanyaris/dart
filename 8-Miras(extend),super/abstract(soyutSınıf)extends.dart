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
  // Not:this aynı sınıftaki elemanları temsil ederken super bir üst sınıfı temsil eder.
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


// Soyut bir sınıf için kurallar
// Soyut bir yöntem içeren bir sınıfın soyut olarak bildirilmesi gerekirken, soyut olarak bildirilen bir sınıfın soyut veya somut yöntemleri olabilir.

// Eğer sınıf en az bir soyut yöntem içeriyorsa, bunun soyut olarak bildirilmesi gerekir.

// Soyut sınıfın nesnesi oluşturulamaz ancak genişletilebilir.

// Anahtar kelimeyle soyut bir sınıf bildirilir abstract.

// Soyut bir sınıfa normal veya somut yöntemler dahil edilebilir.

// Alt sınıf, ana sınıfın tüm soyut yöntemlerini uygulamalıdır.