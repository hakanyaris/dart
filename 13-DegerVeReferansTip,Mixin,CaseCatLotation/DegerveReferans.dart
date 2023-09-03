import '../14-Static/Static.dart';

void main(){

  //money1 ve money2  bank sınıfından türetilmiş ve money değerleri 50  olmuş.
final money1=Bank(50,'12');
final money2=Bank(70,'12');
//money1 ve money2 değeri biribine eşitmi diye sorarsak ikiside 50 olmasında rağmen false döner.
//çünkü claslar referans tiptir. karşılaştırma yaptığımızda iki değerin  bellekte tuttulduğu yeri (referansını)
//karşılaştırı valeu(değerini) karşılaştırmaz
print(money1==money2);

print(money1 + money2); //iki referasn tip toplanamaz ve + işareti kızarır ve hata verir bunu doğru yapmak için
// money1.money+money2.money yazmalıyız fakat bunu iş kısa yoldan yazmak yerine clasta (Bank) bir kendi operatörümüzü tanımlayalım yani 
//+ operatörün ile ne yapılacak onu tanımlayalım



print(money1==money2);// müşterilerin paralarını karşılaştıma yapmak için == opereatörünü aşağıda (Bank içinde)tanımlıyoruz.

print(money1.toString());// tostring metodunu aşağıda(bank sınıfında) override ettik


//müşterimin parasına 10 tl ekle , id sini 1 arttıt ismini de veli yap
// case cat lotacion 

money1..money+=10..name='veli'..id='2';
// YUKARIDAKİ kulanımda money1.money+=10; money1.name=''veli şeklinde ayrı ayrı yapacağımıza 
//yukarıdaKİ gibi tanımladık.

print(money1.id);
print(money1.name);
}







class Bank  with BankMixin{
int money;
String id;
late String  name ;

  Bank(this.money, this.id);

//bu sınıf için + operatörü  çağrılınca  na yapılacağını tanımlama yapıyoruz.
@override //override yazmasa ta olur .bu sadece bilgiendirme bu satır çalışmaz. 
int  operator +(Bank newBank){
  //bu sınıftan oluşturulan iki örnek toplandığında moneylerini topla
  return money + newBank.money; 

}
// == operatöründe (Bank newBank)  Bank nesnesi değil Alabileceğimiz nesne Obje clasından olmak zorundadır.(Obje newBank ).Zaten bütün clasların atası Obje clasından türer.
bool operator == (Object newBank){
  return  newBank is Bank && money == newBank.money; //newbank is Bank yani newBank banka sınıfını nesnesi mi ?
}

@override// toString operatörünü override yapıyoruz
  String toString() {
    
    return super.toString()+'hakan';//yani biz bu sınıfta toSting yaptığmızda yanında hakan da yazacak
  }
  
  @override//mixin sınıfındaki fonksiyonu override ettik.
  void sayBankHello() {
    print('hello');
  }

}
//mixin anahtar kelimesi ile mixin sınıflar oluşturulurlar. with anahtar kelimesi ile miras alınması sağlanır.
// mixin içerisinde constructor oluşturulamaz. with anahtar kelimesi ile constructor içeren bir sınıfı with anahtar
// kelimesi ile kullanamayız. Birden fazla mixini yine arayüzde olduğu gibi aralarına virgül koyarak ekleyebiliriz. 
//Yine mixin içerisinde ki fonksiyonların override edilmesi mecbur değildir ve yine mixin sınıftan bir nesne 
//üretilemez.
//biz mixin yerine normal bir class oluşturup with ile alamaz mıydık? Evet alabilirdik. Ancak bizim oluşturduğumuz classtan 
//bir nesne üretmek gibi bir derdimiz yoksa ve içerisinde bir constructor olmayacaksa normal sınıf tanımlamak anlamsız
// olacaktır.
mixin BankMixin{
    // mixin içerisinde, değerler ve fonksiyonlar bulunabilirler.Bir classa birden fazla mixin sınıf eklenebilir.

  late int money2;
  void sayBankHello();

  void calculateMoney(int money){
    print(money);
  }
 
 
  //mixinler sınıflarınıza extra özellikler ekleyebileceğiniz, içerisinde fonksiyonlar ve değerler tutabilen, birden 
  //fazla
  // mixin ile bir araya getirilebilecek yapılardır.
  //Ben mixinleri Lego parçalarına benzetiyorum. İstediğiniz parçayı ekleyip, istediğiniz şekilde objenizi şekillendirmenize
  // yardımcı olurlar.
  //  https://dart-tutorial.com/object-oriented-programming/mixins-in-dart/

}