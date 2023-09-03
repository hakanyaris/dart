// ignore_for_file: public_member_api_docs, sort_constructors_first
// calback fonsiyon bir başka bir fonksiyona parametre olarak gönderilen fonksiyondur.
import 'dart:io';

void main(List<String> args) {
//1- functionBir içinde functionIki içinde kullandık 
functionBir(functionIki);

//3- Bazen   ard arda yapılan veritabanına bir şey ekleme ve sonra da listeyi ekranda yazdırma durumlarında  veritabanına ekleme işlemi uzun 
//sürüp ekranda yazdırma işlemileri kısa sürdüğü için  bu gibi durumlarda  eklediğimiz eleman geç  eklendiği için yazdırma işlemi ekleme işlem-
//iden önce çalışır ve eklenen eleman görülmez.bu gibi durumları önlemek için  callback ları kullanıyoruz.
 
 var Liste=['post1','post2','post3'];

              // callBack metortu ile  31. satırdaki, postEkle('post4',postYazdir);  postyazdır fonk eşleşiyor.
              // callBack ile
 postEkle(post,callBack) {
 Future.delayed(Duration(seconds:2))//2 saniye bunu bekler 
                .whenComplete(() {
                  Liste.add(post);
                  callBack(Liste);//31 satırdaki postYazdır metodu çalışır.8 sn de bunu bekler.
                  });

    
 }
 postYazdir(diziIslem) {
  Future.delayed(Duration(seconds:8))
                 .whenComplete((){
                  for (var a in diziIslem){
                  print(a);
                  }
                  });
 
  }
                     
  postEkle('post4',postYazdir);
  // postYazdir(Liste);




final user=User(money: 6);
user.colculateMoney();//bu metotu çağırdığımızda money e 5 ekler ama moneyin değerini ekrana yazdıramayız.
//ekrana yazdırmak için ağağıdaki durumu kullanmak durumnda kalırız.bu durumdan kurtulmak için callbacklardan yararlanırız.
//user2 colculateMoney callback ekleyerk moneyi  direkt fonksiyonun içine callback ekleyerek ekranda gösterme işlemi yaptık.
print('user money; ${user.money}');




//user2 colculateMoney fonksiyonuna callback ekleyerk moneyi  direkt fonksiyonun içinde ekranda gösterme işlemi yaptık.
 final user2 =User2(money: 5);
  user2.calculateMoney((int result)//result
  {
        print('user2 money $result');
  });


}



//4- 
class User {
int money;
  User({
    required this.money,
  });

  
  void colculateMoney(){
    money +=5;
    
  }


}
class User2{
  int money;
  User2({
    required this.money,
  });

//fonksiyon içined parametre olarak fonksiyon istedik 
void calculateMoney(void Function (int data) onComplate){
                  //void yerine int yazıp aşağıda retur ile geriye(maine) sayı gönderebilirdik.
money+=5;
onComplate(money);//Oncomplate fonksiyonuna money i gönderiyoruz.main de çalışacak calculateMoney fonksiyonuna  moneyi gönderiyoruz
}
  
}
//2-
void functionBir(callback ) {
 
//  await Future.delayed(Duration(seconds: 2));
 
  print('birinci fonksiyon');
  sleep(Duration(seconds: 5));
  callback();
}
void functionIki() {

  print('ikinci fonksiyon');
}