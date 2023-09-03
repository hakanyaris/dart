//videonun 5.43.46(5.saat) 6.02.00 kadar anlamadım.

import '../7-SınıflarveNullMantığı/get_set.dart';

void main() {
  // CarModel 2 clasınının örneğini oluşturmadan asd değişlenini çağırdık
  print(CarModel2().asd);

  final model = CarModel(
      name: 'bmw x5',
      money: 595.2,
      category: CarModels.bmw,
      isSeconHand: false);
  print(model.category);
// benim 5 tane arabam olacak
  final carsItem = [
    CarModel(
        name: 'bmw x5',
        money: 595.2,
        category: CarModels.bmw,
        isSeconHand: false),
    CarModel(name: 'toyota 9552', money: 1231, category: CarModels.toyota),
    CarModel(
        name: 'yamaha 87874',
        money: 5451,
        category: CarModels.yamaha,
        isSeconHand: false),
    CarModel(name: 'bmw x5', money: 9112, category: CarModels.bmw),
    CarModel(
        name: 'toyota 454',
        money: 5441,
        category: CarModels.toyota,
        isSeconHand: false)
  ];
  print(
      carsItem); //CarModel clasına tostring metodu eklediğimiz için carsItem  prin yapınca name ve money gösterir.

//bu aravbalarımını kaç tanesi ikinci el
  // bu işlemi yapmak için önceden ders 4 de öğrendiğimiz  listeleri for döngüsüyle dolaşıp bulabilirdik.
//fakat aşağıdaki  şeklinde yaparsak daha verimli olur.  burdan inceleyebiliriz.         https://www.eseryazilim.com/dart-programlama/dart-dersleri/dart-kolleksiyon-yapilari/dart-dizi-liste-array-metodlari/
  final resultCount = carsItem
      .where((element) => element.isSeconHand == true)
      .length; // veya https://api.dart.dev/be/180791/dart-core/List-class.html

  print(resultCount); //ikinci el araç sayısı

//bizde ikinci el araba var mı?
  final resultCount2 = carsItem.any((element) => element.isSeconHand == true);
  print(resultCount2);

//yeni bir araba geldi bu bizde mevcut mu?
  final newCar = CarModel(
      name: 'bmw x5',
      money: 595.2,
      category: CarModels.bmw,
      isSeconHand: false);
  final isHaveCar = carsItem.contains(newCar); // contains yani  listede var mı?
  if (isHaveCar) {
    print('elimizde var ');
  } else {
    print('elimizde yok');
  }
//burda bu araba elimizde olmasında rağmen elimizde yok geldi yani isHaveCar false geldi çünkü 13 dersin 6 satırından incelersek iki clası karşılaştımanın özünü anlarız.
//fakat burada biz == operatörü  Car sınıfına eklersek düzelir (equels metotu ekledik.)

//yeni gelen arabanın index numasını bulalım
  final index = carsItem.indexOf(newCar);
  print('yeni gelen arabanın indexi $index');

//markası bmw olan ve fiyartı 600 den büyük olan arabaların ismin söyle                                   //join yani toString() metotdu demek
  final resaultBmwMore600 = carsItem
      .where(
          (element) => element.category == CarModels.bmw && element.money > 600)
      .join(); //video 5:27
  print(
      resaultBmwMore600); //burda sınıfın referasının söyleceğinden tostring metodunuz Cars sınıfında düzenliyoruz.

//sadece araba isimlerini yan yana göster
  //map yani carsItem listesinin bir örneğini oluşturur
  //e.name yani listenin içinden nameleri seç al
  //join yani tostring metotdu gibi
  //(',')  ise name ler arasında  virgül koy.
  final CarNames = carsItem.map((e) => e.name).join(',');
  print('araba isimleri: $CarNames');

//mersedes marka araba var mı?olmadığı için hata verecek ve try catch kullanarak  hata mesajını kontrol altına alacağız.

  try {
    //singleWhere metodu ile listede elimizde o elemandan 1 tane var mı diye kontrol eder sonuç olarak elemanın kendisini döndürür.
    //singleWhere mettdunda eleman yokda veya eleman birden fazla ise hata mesajı gönderir.
    final mecedesCar =
        carsItem.singleWhere((element) => element.category == CarModels.yamaha);
    print(mecedesCar);

//try catch hata fırlatırsa cetch kısmı çalışır.catch kısmında hatayı çözmek amacıyla değil hatayı bildirmek amacıyla kullanılır.
  } catch (e) {
    print('araba markası listede yok ve 1 den fazla mevcut');
  }
//finally kısmı hata mesajı fırlatsa da fırlatmasa da çalışır.
  finally {
    print('bu işlem biraz ağır oldu bir daha sorma');
  }

//arabalarımı küçükten büyüğe sıralar mısın?bu metotta  arabaların index numaraları temelden değişir.
  carsItem.sort(((first, second) => first.money.compareTo(
      second.money))); //burada first ve second yerine   (a,b)yazabilirdik
  print(carsItem);

//arabaları büyükten küçüğe sıralayalım
  carsItem.sort(((a, b) => b.money.compareTo(a.money)));
  print(carsItem);

  final index2 = carsItem.indexOf(newCar);
  print(index2);

// listeleri birbirine ekleme 7- dersteki user clasını kulladık.carItemi user e ekledik ama tam anlayamadım.
  final user2 = carsItem.expand((element) => element.users).toList();

  print('expand: $user2');

//araba ekleyelim
  final mercedes =
      CarModel(name: 'mercedes e600', money: 60, category: CarModels.mercedes);
  carsItem.add(mercedes);
  final index3 = carsItem.indexOf(mercedes);
  print('eklenen index $index3');

//son eklenen arabayı silelim
  carsItem.remove(mercedes);
  final CarNames2 = carsItem.map((e) => e.name).join(',');
  print(CarNames2);

  // removeWhere ile belirttiğimiz özellikteki elemanları sileriz.
  carsItem.removeWhere((element) =>
      element.category == CarModels.yamaha || element.money > 1500);
  print(carsItem);
}

//1- benim  bir arabalar sınıfım olacak
//arabların modeli ismi (bmv,toyota,yamaha)ve parası kesinlikle null olamaz ikinci el durumu eğer müsteri söylemezse her ürün ikinci el
//olarak kabul edilecek.
class CarModel {
  final CarModels category; // carMolds enumundan veri alıyoruz.
  final String name;
  final double money;
  String? city;
  bool isSeconHand;
  List<User> users; // User 7- dersteki User clasından türetilecek
  CarModel(
      {required this.name,
      required this.money,
      required this.category,
      this.city,
      this.isSeconHand = true,
      this.users = const []});

// eşittir operatörü ekledik.ders 13 açıklanmış
  @override
  bool operator ==(covariant CarModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSeconHand == isSeconHand;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        money.hashCode ^
        city.hashCode ^
        isSeconHand.hashCode;
  }

  @override
  String toString() {
    return '$name - $money';
  }
}

enum CarModels { bmw, yamaha, toyota, mercedes }

class CarModel2 {
  final asd = 5;
}
