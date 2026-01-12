import 'dart:ffi';

void main() {
  print("hello");
  print("Hello" + " Ali");
  print(2 + 3);
  int money = 45;
  String adi = "Hakan";
  String test = 'Merhaba Ali  \n Murtaza nasılsın?'; // /n aşağı satıra atar
  print(test);

  print('Bemim adım $adi');
  // $  işaretini parantez içinde kullanırsak değerini atamış oluruz.
  print('Benim Adım' + ' ' + adi);
  print(adi + ' $money');

  final int money2 = 55;
  //final olarak yazardak artık değerini değiştiremeyiz.
  final money4 = 65;
  //final i veri tipi oalrak ekleyebiliriz var gibi

  const int money3 = 65;
  //const ta final gibi sonradan değerini değiştiremeyiz ama const farklı
  //yönleri var.
  //-----------------------------------
  //Bir değişkenin tipini bilmiyorsak onun tipini öğrenmek için .runtimeType kullanırız.
  print(money2.runtimeType);

  //dynamic veri tipi derleme zamanında veri tipinin bildirilmediği çalışma zamanında bildirimin yapıldığı veri tipleridir.
  dynamic y = 'hello';
  //y.    y dynamic olduğu için y. yazdığımızda string veri tipinin metotlarını kullanamıyoruz.

//-----------------------------------------------
//StringBuffer kullanımı
//stringlerin aşağıdaki gibi  + ile birleştiriğimizde bellek için çok iyi olmaz aşağıyı oku;
//Her yeni dizeyi birleştirdiğimizde, derleyici ortaya çıkan dize için yeni bir bellek alanı ayırır ve çöp toplayıcı
// çağrılarak önceki bellek alanının ayrılması sağlanır. Yani, kelimenin tam anlamıyla, birleştirdiğiniz her öğe
//için çöp toplayıcı çağrılır ve bu yinelemelerin her biri için yeni bir bellek konumu atanır!
  List<String> cities = ["Bangalore", "Mumbai", "Delhi", "Chennai"];

  String finalCities = "";

  for (String city in cities) {
    finalCities += (city + ' ');
    print(identityHashCode(
        finalCities)); //hashCode (bellekte tutulan adres )4 farklı rakam olması belleği yorar.
  }

  print(finalCities);

  //StringBuffer kullannımı ile belleke bir tane yer oluşturulur
  //StringBuffer dizeyi bir bellek konumunda değil bir tamponda depolamasıdır. Belleği yalnızca bir nesne oluşturmak için yöntem çağrıldığında kullanır

  StringBuffer sb = StringBuffer();
  List<String> cities2 = ["Bangalore", "Mumbai", "Delhi", "Chennai"];
  for (String cities in cities2) {
    sb.write(cities + ' '); // wirite metotu önceki  metne ekleme demek
    print(identityHashCode(sb));
  }
  print(sb.runtimeType); //tipi  StringBuffer
  String CityList = sb.toString(); //sb  StringBuffer i Stringe çeviriyoruz.
  print(CityList);

  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  print(message);

  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }

  for (final c in callbacks) {
    c();
  }
}
