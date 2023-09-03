void main(){

final user =_User('kemal',age:null);
//müşterinin yaşı 18 den küçük mü kontrol et.
if((user.age ?? 10) < 18){

}
// is kalıbı sayesinde age içien gelen değerin  int olup olmadığın int değilse zaten  null oluyor.
if(user.age is int){
   if(user.age!<18){
    print('evet küçük');
   }
}

final user2=_User('suat',age: 20);
if(user2.age is int){
  if(user2.age! <18){
    user2.updateMoneyWithString('TR');
  }

}
//moneyType rakam olarak atanırsa    satırdaki 
else{user2.updateMoneyWithNumber(15);}

final _newType=user.moneyType is String ? user.moneyType as String:'';//moneyType string ie moneyType String  değerini ata
//moneytype strig değilse '' boş string değeri ata.
print((_newType as String)+'A');
print( (user2.moneyType as String)+'  A');//burada as yazarak moneyType Kesinlikle string tipinde gelecek diyorum .
//(  isim as string ifadesinde bildirim yapıyorum.atama yapmıyorum stringe dönüştürmüyor.eğer  isim değişkeni  int
// ise program hata verir.)


}
//sınıfları private yapmak 
class _User{
final String name;
int? age;
//moneyType nin tipi belli olmadığı için dynamic oalrak belirledik
dynamic moneyType ;

_User(this.name,{this.age});

//moneyType string olursa bundan sonra string alır .
void updateMoneyWithString(String data){
  moneyType=data;
  }
// MoneyType nunber olursa int . bundan sonra int alır.
void updateMoneyWithNumber(int data){
  moneyType=data;
}


}