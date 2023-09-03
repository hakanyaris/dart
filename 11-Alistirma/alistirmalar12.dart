// ignore_for_file: public_member_api_docs, sort_constructors_first
void main (){

Person person1=Person(status: Status.Kotu, name: 'Ali', surname: 'Uçar', address: 'Topçular mahallesi belde sokak ', money: 55);

final PersonList=[

Person(status: Status.Kotu, name: 'Ali', surname: 'Uçar', address: 'Topçular mahallesi belde sokak ', money: 35,isLong: true),
Person(status: Status.orta, name: 'Ahmet', surname: 'inan', address: 'Baharlı mahallesi gül sokak ', money: 45),
Person(status: Status.iyi, name: 'Kemal', surname: 'Sunal', address: 'Topçular mahallesi bahçe sokak ', money: 25),
Person(status: Status.cokKotu, name: 'Suna', surname: 'Yaş', address: 'Topçular mahallesi belde sokak ', money:50),
Person(status: Status.iyi, name: 'Fevzi', surname: 'Gül', address: 'Topçular mahallesi belde sokak ', money: 70,isLong: true),
Person(status: Status.Kotu, name: 'Hüseyin', surname: 'Uçar', address: 'Topçular mahallesi belde sokak ', money: 100),
Person(status: Status.cokKotu, name: 'Erhan', surname: 'Uçar', address: 'Topçular mahallesi belde sokak ', money: 55),

];
// kaç kişinin durumu kötü
final SonucSayisi=PersonList.where((element) => element.status==Status.Kotu).join();
print(SonucSayisi);

//moneyi 30 dan büyük olanlar
final sonuc=PersonList.where((element) => element.money>30).toList();
for(var list in sonuc){
   print('30 dan büyük olanlar : ${list.name}');
}



//uzun boylu var mı? isLong =true olan
final varMi=PersonList.any((element) => element.isLong==true);
print('uzun bolu:$varMi');

//yeni gelen Person listemizde mevcut mu?
final person2=Person(status: Status.cokKotu, name: 'Erhan', surname: 'Uçar', address: 'Topçular mahallesi belde sokak ', money: 45);

final MevcutMu=PersonList.contains(person2);
print('mevcut mu $MevcutMu');

//Soy ismi uçar olan ve parası 50 den çok olanların isilerini 
final varMi2=PersonList.where((element) => element.surname=='Uçar'&& element.money>50).join();
print('soyadı uçar olup 50 den fazla olan $varMi2');


//isimleri  yan yana göster map geçici bir liste oluşturur.
final isimGoster=PersonList.map((e) => e.name).join(',');
print(isimGoster);



// final isim6= PersonList.map((e) => {

//   if(e.status==Status.Kotu){

//   e.status==Status.iyi
//   }

// }).toList();

// print('yeni liste $isim6');



//kaç eleman var 
final a=PersonList.length;
print(a);

// listenin ilk elemanın bul
final b=PersonList.first;
print(b); // Person clasta  override ettiğimiz toString metodu çalıştı. 

//listenin son elemanını bul 
final c=PersonList.last;
print(c);

//listeyi anlık olarak tersten yazdır kalıcı bir işlem değildir.
final d=PersonList.reversed;
print(d);
print(PersonList);

// Liste boş mu ?bool döndürür
final e=PersonList.isEmpty;
print(e);

// listeden eleman silme (aynı elemandan birden fazla varsa ilk hangisi ise onu siler)
PersonList.remove(Person(status: Status.cokKotu, name: 'Erhan', surname: 'Uçar', address: 'Topçular mahallesi belde sokak ', money: 55));
print(PersonList);

// Listenin 4. elemanını sil

PersonList.removeAt(4);
print('4. eleman silindi; $PersonList');

//tüm listeyi  boşaltmaP
//PersonList.clear();


// bu eleman elimizde var mı  bool döndürür
final f=PersonList.contains(Person(status: Status.orta, name: 'Ahmet', surname: 'inan', address: 'Baharlı mahallesi gül sokak ', money: 45));
if(f){print('Ahmet elimizde var');}
else {print('Ahmet elimizde yok');}
final Person2=Person(status: Status.orta, name: 'Ahmet', surname: 'inan', address: 'Baharlı mahallesi gül sokak ', money: 45);

// 2. indeksteki elemanı ver
final h = PersonList.elementAt(2);
print(h);


//bu elemanımı kaçıncı indexte sayı döndürür.
final i =PersonList.indexOf(Person2);
print(i);

// listeyi karıştır kalıcı olarak
PersonList.shuffle();
print(PersonList);

// diğer listeyi bizim listemize ekleme.kalıcı olarak.
final PersonList2=[
Person(status:Status.iyi, name:'Kenan' , surname:'yarış', address: 'address', money: 10),
Person(status:Status.iyi, name:'Feyyaz' , surname:'yarış', address: 'address', money: 10)
];

PersonList.addAll(PersonList2);
print('Eklemeli liste $PersonList');


// Liste birleştirme operatörü […liste1, …liste2]
final PersonList3=[
Person(status:Status.iyi, name:'Nergis' , surname:'Er', address: 'address', money: 50),
Person(status:Status.iyi, name:'Hayri' , surname:'Al', address: 'address', money: 30)
];

var  tumliste=[];
tumliste=[...PersonList,...PersonList2,...PersonList3];
print(tumliste);




//Listemizi money e göre küçükten büyüğe sıralayalım (kalıcı olur)
PersonList.sort(((a , b) =>a.money.compareTo(b.money) ));
print('Küçükten Büyüğe: $PersonList');

//listemizi büyükten küçüğe sıralamak için
PersonList.sort(((a, b) => b.money.compareTo(a.money)));
print('Büyükten Küçüğe $PersonList');












}

class Person {
final String name;
final String surname;
final String address;
final double money;
final Status status;
final bool isLong;
  Person({required this.status, required this.name,required  this.surname,
          required this.address,required this.money,this.isLong=false});



  @override
  bool operator ==(covariant Person other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.surname == surname &&
      other.address == address &&
      other.money == money &&
      other.status == status &&
      other.isLong == isLong;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      surname.hashCode ^
      address.hashCode ^
      money.hashCode ^
      status.hashCode ^
      isLong.hashCode;
  }

  @override
  String toString() {
    return '$name ';
  }
}

enum Status{cokKotu,Kotu,orta ,iyi}


