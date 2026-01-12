// import 'dart:js_interop';


void main() {
  List a = [null, 5, 7, 9, 11, 14, 17, 19];
  print(a);
  print(a.length); //listenin eleman sayısı
  print('ilk ${a.first}'); //listenin ilk elemanı
  print(a.last); //listenin son elemanı
  print(a.reversed); //listeyi anlık olarak tersten yazdırır.Kalıcı olmaz
  print(a.isEmpty); //liste boş mu
  print(a.isNotEmpty); //Listedolu mu
  print(a.elementAt(
      3)); //listenin 3 indexteki elemanını döndürür.Liste boşsa ve o  indekste eleman yoksa hata fırlatır.
//-----------------------------------------------------------------------------
  print(
      ' elementAtOrNull ;${a.elementAtOrNull(3)}'); //listenin 3 indexteki elemanını döndürür.Liste boşsa ve o  indekste eleman yoksa  null döndürür.
  //-------------------------------------------------------------------------
  a.fillRange(0, 5,
      null); //a listesinin 0 elemanından 5 elemanına kadar (5. eleman dahil değil) null yap(veya rakam yap veya string)
  print(a);

  //-------------------------------------------------------------------------
  print(
      a.firstOrNull); //listenin ilk elemanını döndürür eğer boşsa null döndürür
  print(a.lastOrNull);
  a.add(45); //listenin sonun ekler
  print(a);
  //-------------------------------------------------------------------------
  a.remove(5); // 5 ögesini ilk gördüğü yerde siler.
  List x = [null, 5, 7, 9, 11, 14, 17, 19];
  
  print('x ${x.firstOrNull}'); //6
  //-------------------------------------------------------------------------
  List sayilar5 = [3, 4, 5, 6, 7, 8, 9];
  var firstWhere = sayilar5.firstWhere((element) =>
      element > 3 &&
      element < 6); //listenin koşulu sağlayan ilk elemaremovenını döndürür.
  print('firstWhere: $firstWhere'); // 4

  //-------------------------------------------------------------------------
  print(
      '7 ögesinin yeri ${x.indexOf(7)}'); // ilk gördüğü yerin index numarasını döndürür .yoksa -1 döndürür.
  //-------------------------------------------------------------------------

  //-------------------------------------------------------------------------
  List<String> liste6 = ['do', 're', 'mi', 're'];
  print(
      ' lastIndexOf: ${liste6.lastIndexOf('re')}'); // re listede en sondan başlayarak arar ve indeks numarasını döndürür.
  //3
  //-------------------------------------------------------------------------
  a.removeAt(1); // birinci indexteki elemanı siler
  print(a);
  print(' birinci indexteki elemanı siler;');
  //-------------------------------------------------------------------------
  a.removeLast(); //listedei son öğeyi siler
  //------------------------------------------------------------------------
  List y = [5, 7, 9, 11, 14, 17, 19];
  y.removeWhere(
      (element) => element > 16); //listedeki 16 dan büyük elemanları siler.
  print('liste y: $y'); //5-7-9-11-14
  //------------------------------------------------------------------------
  List k = [5, 7, 9, 11, 14, 17, 19];
  k.removeRange(1,
      4); //listede 1. indeksten 4. indekse kadar(4. indeks dahil değil) siler.
  print('removeRange :$k'); //5-14-17-19
//-------------------------------------------------------------------------
  a.addAll([55, 60, 65]); //öğreleri sona ekler
  print(a);
  //-------------------------------------------------------------------------
  print(a.hashCode);
  //-------------------------------------------------------------------------
  a.clear(); //Listeyi kalıcı siler

  print(a);
  //-------------------------------------------------------------------------

  List b = [null, 5, 7, 9, 11, 14, 17, 19];
  //------------------------------------------------------------------------
  var map3 = b
      .map((e) => e)
      .join('-'); //listenin bütün elemanlarını yazar araya - koyar.
  print('map3 $map3'); // null-5-7-9-11-14-17-19

  List c = [5, 7, 9, 11];
  var map2 = c.map((e) => e < 6).join(
      '-'); //listenin bütün elemanları tek tek koşul ile karşılaştırır.her eleman için ayrı ayrı sonuç verir.Listede null varsa hata verir.
  print('map2 $map2'); //true-false-false-false
  //------------------------------------------------------------------------
  print(b
      .where((element) => (element != null && element > 7))
      .join()); // null olmayan ve 7 den büyük
  //-------------------------------------------------------------------------
  print('5 elemanı var mı ${b.contains(5)}'); //5 elemanı var mı
  //-------------------------------------------------------------------------
  print(b
      .where((element) =>
          element != null && element < 11 || element != null && element > 14)
      .join()); //null olmayan 11 den küçük 17 den büyük
  //---------------------------------------------------------------------------
  var sayilar = [3, 6, 9];

  print(sayilar.every((int x) => x % 2 == 0));
  // every yöntemi  en aşağıda maninden sonra açıklanmıştır.

  // yukarıdaki b listesinin b.every((int x) => x % 2 == 0); hata vermesinin nedeni b listesinin <int>  olarak TANIMLANMAMIŞ

  var kalan0 = (int x) =>
      x % 3 == 0; //fonsiyon tanımlıyoruz fonksiyonu kalan0 eşitliyoruz
  print(
      'Bütün elemanların 3 ile bölümünden kalan 0 mı: ${sayilar.every(kalan0)}'); //true
  //----------------------------------------------------------------------------------------
  var sayilar2 = [2, 4, 6, 8, 8];
  print(' 6 elemanının index numarası:${sayilar.indexOf(6)}');
  // final indexno = sayilar2.indexOf(4,2);//indexof(a,b)çalışmıyor b olan kısmı hatalı.
  // print(indexno);
  // const asd = ['sada', 'asdda', 'asda'];
  // asd.indexed((index, sayilar) {
  //   return '$index $sayilar';
  // });
  //-----------------------------------------------------------------------------

  print(sayilar2.any((element) =>
      element > 4)); //listede 4 den büyük eleman var mı ?true false
  //------------------------------------------------------------------------------
  var liste9 = [
    'a',
    'b',
    'c',
  ];

  var map = liste9
      .asMap(); // listeyi map a haritaya çevirir(6.ders)listenin her bir elemanına  0 ,1 ,2,3  değeri atar.
  print('asMap $map'); //asMap {0: a, 1: b, 2: c}
  print(map[1]);

  print(map.values.toList());
  print(map.keys.toList());
  //----------------------------------------------------------------------------
  List sayilar3 = [3, 4, 5, 6, 7, 8, 9];
  // sayilar3.every((int element) => element % 2 == 1);  //liste <dynamic> olduğu için hata verir.
  //------------------------------------------------------------------------------
  List<int> sayilar4 = sayilar2.cast<int>();
  print(sayilar4.every((int element) => element % 2 == 1));

  //cast ,dinamik tür öğeleri içeren bir listeden belirli bir türün yeni bir
  //listesini (int string doube) oluşturmanıza olanak tanıyarak, listelerle tür dökümü (int string doube) gerçekleştirme olanağı sağlar.

  //----------------------------------------------------------------------------------
  List sayilar30 = [12, 23, 45, 66, 87, 55, 77, 88, 99, 96];
  print(
      'take; ${sayilar30.take(5)}'); //listenin ilk 5 (5. indeks dahil)elenının al liste oluştur.
  //take;(12, 23, 45, 66, 87)
  //----------------------------------------------------------------------------------------
  print('takeWhile:${sayilar30.takeWhile((value) {
    if (value < 70)
      return true;
    else
      return false;
  })} '); // listenin her bir elemanını dolşmaya başlar koşulu sağlaya tru ekledik ve listeye eker false olanı listeye eklemez.
  //not: bu metotta koşulu sağlamayan ilk elemanda döngü biter.diğer elemanlar sorgulanmaz
  // takeWhile:(12, 23, 45, 66)
  //------------------------------------------------------------------------------

  final liste34 = sayilar30.skip(
      5); //listenin 5 indeksinde (5. indeks dahil) sonraki elemanları liste olarak geriye döndürür. anlık
  print(liste34); //(55, 77, 88, 99, 96)
  print(liste34.runtimeType); //SubListIterable<dynamic>
//------------------------------------------------------------------------------
  final liste35 = sayilar30.skipWhile((value) {
    if (value < 70)
      return true;
    else
      return false;
  }); //takeWhile metodunun tam  tersi(iki yukarıda) koşulu sağlamayanı arar. ilk elmandan başlayarak tarar
  //koşu sağlamayan ilk elemnadan sonrasını(koşulu sağlasa dahi) listeye alır.yani false olan ilk elemandan başlar listeyi olşturur.
  print('skipWhile $liste35'); //skipWhile (87, 55, 77, 88, 99, 96)
  //----------------------------------------------------------------------------
  var liste = ['can', 23, 'kenan', 45, 'beş', true, 25.6];
  var sayiListesi = liste.whereType<int>();
  print('whereTypeint: $sayiListesi'); //whereType: (23, 45)
  var boolListe = liste.whereType<bool>();
  print('whereTypebool:$boolListe'); //whereTypebool:(true)

  //-----------------------------------------------------------------------------
  List basket1 = ['Mango', 'Apple'];
  List basket2 = ['Orange', 'Avocado', 'Grape'];
  List basket3 = ['Lemon'];

  // converting the lists to an iterable
  var newBasketIterable = [basket1, basket2, basket3].expand((x) => x);
  // combining the lists
  var newBasket = newBasketIterable.toList();

  // printing the iterable
  print("Iterable:  $newBasketIterable");
  print(newBasketIterable.runtimeType); //ExpandIterable<List<dynamic>, dynamic>
  // printing the combined list
  print("Combined List:  $newBasket");
  print(newBasket.runtimeType); //List<dynamic>

  //---------------------------------------------------------------------------
  List basket4 = ['Orange', 'Avocado', 'Grape', 'Pink'];
  var expand = basket4.expand((element) =>
      element == 'Orange' ? ['Orange', 'Turuncu', 'Mavi'] : [element]);
  print(expand.toList());
  //----------------------------------------------------------------------------
  var List77 = basket4.sublist(1,
      3); //List döndürür. 1 (1. indeks dahil )ve 3 indeks (3. indeks dahil değil) arasındaki elemanları liste yapar
  print('sublist $List77'); //[Avocado, Grape]
  //---------------------------------------------------------------------------------

  List sayilar6 = <double>[10, 15, 3.4];
  const initialValue = 5.0; //başlangıçdeğer
  var sayi8 = sayilar6.fold<double>(
      //başlangıç değer (initialValue)ile listenin diğer elemanların  işlem yapar
      initialValue,
      (previousValue, element) =>
          previousValue + element); //5.0+ 10+ 15 +3.4 toplar
  print('sayi8 :$sayi8'); // 33.4

//-------------------------------------------------------------------------
  var sayilar7 = [12.8, 7.3];
  var guncelListe = sayilar7.followedBy([
    15,
    13
  ]); //listenin  parantez içindekileri ekler.addAll farkı addAll  listenin özüne kalıcı olarak ekler ama followedBy
  //anlık ekler ve eklendiği listeyi değiştirmez. atama yaparak başka listeye tanımlarız.
  print(sayilar7);
  print('followedBy :$guncelListe'); // followedBy :(12.8, 7.3, 15.0, 13.0)
//---------------------------------------------------------------------------

  sayilar7.forEach(print); //
  sayilar7.forEach((element) {
    if (element != null) {
      print('element: $element');
    }
  });
  //çıktı
// element: 12.8
// element: 7.3
//-----------------------------------------------------------------------------
  var sayilar8 = [2, 4, 6, 8, 10];
  var guncelListe8 = sayilar8.getRange(1,
      3); //listede 1 indeksten 4 indekse kadar (4.indeks hariç) alır ve geriye liste döner ama eklendiği
  //listeyi etkilemez.
  print(sayilar8); //[2, 4, 6, 8, 10];
  print('getRange: $guncelListe8'); //getRange: (4, 6)
//----------------------------------------------------------------------------
  var sayilar11 = [1, 2, 3, 4];
  sayilar11.setRange(
      0, //listenin 0. elenından
      3, //listenin 2. elemanına kadar (3. eleman dahil değil)
      [
        10,
        11,
        12,
        13,
        14,
        15
      ], // bu listenin 2 nınci(asağıdaki 2 sayı) elemanından başlayarak yukarıdaki aralığa  (0 ve 3) bu listenin 2. 3. 4. elemanını uygula
      2 // [10,11,12,13,14,15] listesinin 2 elemanından başlayarak
      ); // listeyi kalıcı olarak değiştirir.
  print('setRnge $sayilar11'); //setRnge [12, 13, 14, 4]
//----------------------------------------------------------------------------
  List<int> kelime10 = [2, 3, 4, 5, 6, 7];
  print(kelime10.reduce((value, element) =>
      value +
      element)); //listede elemalarını birbiriyle belirtilen işlemi(toplama) yapar
  //27
//------------------------------------------------------------------------------
  List<int> kelime11 = [78, 79, 80, 81];
  kelime10.replaceRange(1, 4,
      kelime11); //ilk listenin 1 indeksinden 4. indeksine(4. indeks dahil değil) siler araya 2. listenin
  //elemanlarını yerleştirir.kalıcı olarak ilk listeyi değiştirir
  print('replaceRange: $kelime10');
  //[2, 78, 79, 6, 7]
//------------------------------------------------------------------------------
  List<String> kelime12 = ['ali', 'kemal', 'can', 'hakan'];
  kelime12.retainWhere((element) =>
      element.length ==
      3); //listede 3 kelimeden olşan elmanlarını listeler.listeyi kalıcı olarak değiştirir.
  print('retainWhere: $kelime12'); // [ali, can]

//------------------------------------------------------------------------------
  List<String> kelime16 = ['a', 'b', 'c', 'd'];
  List<String> kelimeEk = ['can', 'elma'];
  kelime16.setAll(1,
      kelimeEk); //asıl listenin 1 indeksinden başla ek listenin elemanların ana listenin elemanlarının üzerine yaz.
  print('setAll $kelime16'); //[a, can, elma, d]
//------------------------------------------------------------------------------
  var kelime17 = ['a', 'b', 'c', 'd', 'e', 'f'];
  var kelime18 = ['hb', 'kd', 'asd', 'hjk', 'xu'];
  kelime17.setRange(0, 3, kelime18,
      2); // 1. listenin 0 ile 3 indeks(3. indeks dahil değil) arasına ikinci listenin 2 indeksinden
  // başla üç elemanını al birinci listenin üzerine  3 elemanı üzerine yaz kalıcı değiştirir.
  print(kelime17); //[asd, hjk, xu, d, e, f]
//-----------------------------------------------------------------------------
  kelime18
      .shuffle(); // listenin elemanlarının yerlerini değiştirir random kalıcı olarak.
  print(kelime18); //[hjk, xu, kd, asd, hb]

//----------------------------------------------------------------------------
  var sayilar21 = <int>[1, 2, 3, 4, 5, 6, 7, 8];
  print(sayilar21.singleWhere((element) => element > 5 && element < 7,
      orElse: () =>
          -1)); //Listede koşulu sağlayan  tekli elemanı döndürür.Birden fazLA eleman koşula girerse hata verir
  // ama orElse: () => -1 eklersek -1döndürür.jata vermez
  //6

//------------------------------------------------------------------------------
  int index = 3;
  sayilar8.insert(index, 5); //3 indekse 5 ekle
  print('insert $sayilar8 '); //[2, 4, 6, 5, 8, 10]
  sayilar8.insertAll(index, [50, 60]); // 3 indekseren itibaren 50 ve 60 ekler
  print('insertAll $sayilar8 '); //[2, 4, 6, 50, 60, 5, 8, 10]
//---------------------------------------------------------------------------
  List<String> kelime = <String>['do', 'ra', 're', 'mi'];
  var sayi9 = kelime.lastIndexWhere((element) => element.startsWith(
      'r')); // r yi listede sonrdan itibaren arar kaçıncı indexste olduğunu bulur.
  print('lastIndexWhere $sayi9'); //2

  var kelime8 = 'Ali Murtaza nerede?';
  print(
      'startsWith :${kelime8.startsWith('Ali', 4)}'); //false //Ali karakterleri 4 indeksten başlayarak var mı?bool döner

  print(kelime8.endsWith('de?')); //String 'de?' ile bitiyor mu ?bool döner
  var kelime3 = 'De'; //////////////321
  print(kelime3.padLeft(3, 'a')); //aDe
  //(son karakterden 3 karakter sola ve 3 karakter  listeden uzun ise boşluklara da a ekler ve kelime3 listesini kalıcı olarak değiştirmez)
  print(kelime3.padLeft(5, 'a')); //aaaDe
  //(son karakterden 5 kareter sonra ve  boşluklara a ekler kelime3 listesini kalıcı olarak değiştirmez)
  //----------------------------------------------------------------------------
  const string = 'Hello world!';
  final splitted = string.split(
      ' '); //boşluk (istersek virgül veya harf karakteri)karakteri olan harfleri böl listenin ayrı elemaları yap geriye liste dönderir.
  print('spilt: $splitted'); // [Hello, world!];
  //----------------------------------------------------------------------------
  var metin = 'Kemal nasılsın?';
  print(metin.substring(
      1)); //emal nasılsın?  1 indekseten başlar  gerisini yazar 0 indeksi atar.Stringi geçici  olarak değiştirir.anlık
  print(metin);
  print(metin.substring(6, 14)); //nasılsın 6. imdex dahil 14. index hariç
  //----------------------------------------------------------------------------
  print(metin
      .toLowerCase()); //metninin bütün harflerini küçük harfe çevirir kalıcı olarak yapar.
  print(metin);
  //----------------------------------------------------------------------------
  metin
      .toUpperCase(); //metninin bütün harflerini büyük harfe çevirir kalıcı olarak yapar.
  //-----------------------;-----------------------------------------------------
  var metin2 = '   kemal nasılsın?   ';
  print(metin2
      .trim()); //metnin başındaki ve sonundaki boşlukları alır.anlık yapar kalıcı olarak stringi değiştirmez
  print(metin2);
  //----------------------------------------------------------------------------
  metin2
      .trimLeft(); //metnin solundaki boşlukları alır.kalıcı olarak stringi değiştirmez.
  //----------------------------------------------------------------------------
  metin2
      .trimRight(); //metnin sağindaki boşlukları alır.kalıcı olarak stringi değiştirmez.
  //----------------------------------------------------------------------------
  // metin2.isAdmin()   isAdmin anlamadım.
  //----------------------------------------------------------------------------
  var relation = 'Dart'.compareTo('Go'); // comperaTo iki metni karşılaştırır.
  print(relation); // -1
  relation = 'Go'.compareTo('Forward');
  print(relation); // 1
  relation = 'Forward'.compareTo('Forward');
  print(relation); // 0
  //0:Her iki değer birbirine eşit ise
  //1:Soldaki sağdakinden alfanumaratik oalrak büyük ise
  //-1 :Soldaki sağdakinden alfanumaratik olarak küçük ise
  //---------------------------------------------------------------------------

  //-----------------------------------------------------------------------------
}

// Yöntem every(), bir listedeki her öğenin belirli bir koşulu karşılayıp karşılamadığını kontrol etmek için
//kullanılır. Listeden bir öğeyi girdi olarak alan ve bir boole değeri döndüren bir işlev olan bir argüman alır.
// trueÖğe koşulu karşılıyorsa veya değilse işlev geri dönmelidir false. Listedeki her öğe koşulu karşılıyorsa ,
//every()yöntem döndürür true. Aksi takdirde geri döner false.

//.add(3) 3 elemanını  listenin sonuna ekler
//.addAll([55, 60, 65]); //öğreleri sona ekler
//.insert(index, 5); //3 indekse 5 ekler.listenin eleman sayısı 1 artar
//.insertAll(index, [50, 60]); // 3 indekseren itibaren 50 ve 60 ekler
//.followedBy([15,13 ]); //listenin  parantez içindekileri ekler.addAll farkı addAll  listenin özüne kalıcı olarak ekler ama followedBy anlık ekler ve eklendiği listeyi değiştirmez. atama yaparak başka listeye tanımlarız.
//.clear(); //Listeyi kalıcı siler
//.contains(5)}'); //5 elemanı var mı
//.forEach(print); listenin elemenlarını tek tek yazdırır
//.forEach((element) { if (element != null) { print('element: $element');}}); //çıktı // element: 12.8 // element: 7.3
//.remove(5)  5 elemanını ilk gördüğü yerde siler
//.removeAt(1); // birinci indexteki elemanı siler
//.removeLast(); //listedeki son öğeyi siler
//.removeWhere((element) => element > 16)); //listedeki 16 dan büyük elemanları siler.
//.removeRange(1,4);  listede 1. indeksten 4. indekse kadar(4. indeks dahil değil) siler.
//.firstOrNull     listenin ilk elemanını döndürür eğer boşsa null döndürür
//.elementAt(3)   listenin 3 indexteki elemanını döndürür.Liste boşsa ve o  indekste eleman yoksa hata fırlatır.
//.elementAtOrNull(3)  listenin 3 indexteki elemanını döndürür.Liste boşsa ve o  indekste eleman yoksa  null döndürür.
//.fillRange(0, 5,null);   alistesinin 0 elemanından 5 elemanına kadar (5. eleman dahil değil) null yap(veya rakam yap veya string)
//.firstWhere((element) => element > 3 &&element < 6); //listenin koşulu sağlayan ilk elemanını döndürür.
//.indexOf(7) 7 yi ilk gördüğü yerin index numarasını döndürür .yoksa -1 döndürür.
//.lastIndexOf('re')  listede en sondan başlayarak arar ve indeks numarasını döndürür.
//.lastIndexWhere((element) => element.startsWith('r')); // r yi listede sonrdan itibaren arar kaçıncı indexste olduğunu bulur.
//.map((e) => e).join('-'); //listenin bütün elemanlarını yazar araya - koyar.
//.map((e) => e < 6).join( '-'); //listenin bütün elemanları tek tek koşul ile karşılaştırır.her eleman için ayrı ayrı(true-false-false-false gibi ) sonuç verir.Listede null varsa hata verir.   //
//.where((element) => (element != null && element > 7)).join()); // null olmayan ve 7 den büyük
//.where((element) =>element != null && element < 11 || element != null && element > 14).join());  //null olmayan 11 den küçük 17 den büyük
//.whereType<int>(); dynamic bir listenin içinden int tipindeki elemanları alır liste oluşturur
//.whereType<bool>(); dynamic bir listenin içinden bool tipindeki elemanları alır liste oluşturur
//.every(kalan0)    //var kalan0 = (int x) => x % 3 == 0;//fonsiyon tanımlıyoruz fonksiyonu kalan0 eşitliyoruz 'Bütün elemanların 3 ile bölümünden kalan 0 mı  (bütün elemanlar 3 ile tam bölünüyorsa true yolsa false)
//.any((element) => element > 4)); //listede 4 den büyük eleman var mı ?true false
//.asMap(); // listeyi map a yani  haritaya(anahtar değer ) çevirir(6.ders)listenin her bir elemanına  0 ,1 ,2,3  değeri atar. bu şekilde map gibi kullanabiliriz.
//.values.toList());   .keys.toList()); asMap() ile oluşturulan anahter ve değerleri listeleyebiliriz
//.cast<int>(); cast ,dinamik tür öğeleri içeren bir listeden belirli bir türün yeni bir listesini (int string doube) oluşturmanıza olanak tanıyarak, listelerle tür dökümü (int string doube) gerçekleştirme olanağı sağlar.
//.take(5)}'); //listenin ilk 5 (5. indeks dahil)elenının al liste oluştur.
//.takeWhile((value) {  if (value < 70) return true;  else  return false;  })} '); // listenin her bir elemanını dolşmaya başlar koşulu sağlaya tru ekledik ve listeye eker false olanı listeye eklemez. not: bu metotta koşulu sağlamayan ilk elemanda döngü biter.diğer elemanlar sorgulanmaz
//.sublist(1,3); //List döndürür. 1 (1. indeks dahil )ve 3 indeks (3. indeks dahil değil) arasındaki elemanları liste yapar
//.skip(5); //listenin 5 indeksinde (5. indeks dahil) sonraki elemanları liste(itterable) olarak geriye döndürür. anlık
//.getRange(1,3); //listede 1 indeksten 4 indekse kadar (4.indeks hariç) alır ve geriye liste döner ama eklendiği listeyi etkilemez.
//.skipWhile((value) { if (value < 70)  return true else  return false; }); //takeWhile metodunun tam  tersi(iki yukarıda) koşulu sağlamayanı arar. ilk elmandan başlayarak tarar koşu sağlamayan ilk elemnadan sonrasını(koşulu sağlasa dahi) listeye alır.yani false olan ilk elemandan başlar listeyi olşturur.
//.expand()   //[basket1, basket2, basket3].expand((x) => x); basket 1 2 ve 3 listelerini  birleştirir ve  atadığımız ExpandedIterable çıktısı verir.
//.expand((element) => element == 'Orange' ? ['Orange', 'Turuncu', 'Mavi'] : [element]); listede  Orange varsa Orange yerin 'Orange', 'Turuncu', 'Mavi' ekle isteye
//.fold<double>( initialValue, (previousValue, element) =>previousValue + element);  initalvalue(başlangıç değer) dışarıda belirlenen bir değer
//.SetRange yukarıda iki farklı yerde detaylı bir şekilde açıklanmıştır.biraz karışık . bir listenin elemanlarını diğer listenin belirli  indeks arasındaki elemanları ile doldurma.
//.reduce((value, element) => value + element)); //listede elemalarını birbiriyle belirtilen işlemi(toplama) yapar
//.replaceRange(1, 4,kelime11); //ilk listenin 1 indeksinden 4. indeksine(4. indeks dahil değil) siler araya 2. listenin elemanlarını  hepsini yerleştirir.kalıcı olarak ilk listeyi değiştirir
//.retainWhere((element) =>element.length ==3); //listede 3 kelimeden olşan elmanlarını listeler.listeyi kalıcı olarak değiştirir.
//.setAll(1,kelimeEk); print(kelime16); //asıl listenin 1 indeksinden başla ek listenin elemanların ana listenin elemanlarının üzerine  kaç tane varsa yaz.
//.shuffle(); // listenin elemanlarının yerlerini değiştirir random kalıcı olarak.
//.singleWhere((element) => element > 5 && element < 7,orElse: () => -1)); //Listede koşulu sağlayan  tekli elemanı döndürür.Birden fazLA eleman koşula girerse hata verir ama orElse: () => -1 eklersek -1döndürür.jata vermez
//.startsWith('Ali', 4)}'); //Ali karakterleri 4 indeksten başlayarak var mı?bool döner.
//.endsWith('de')); //String 'de' ile bitiyor mu ?bool döner
//.padLeft(3, 'a')); //(son karakterden 3 karakter sola ve 3 karakter  listeden uzun ise boşluklara da a ekler ve kelime3 listesini kalıcı olarak değiştirmez)
//.split(' '); //boşluk (istersek virgül veya harf karakteri)karakteri olan harfleri böl listenin ayrı elemaları yap geriye liste dönderir.
//.substring(1));   listeyi (veya srtingi )1 indekseten önecesini almaz  gerisini yazar (0 indeksi ataryani ).Stringi geçici  olarak değiştirir.anlık
//.substring(6, 14)); listeyi (veya srtingi ) 6  index ile 14 index arasını alır  (6. imdex dahil 14. index hariç)
//.toLowerCase()); //metninin bütün harflerini küçük harfe çevirir kalıcı olarak yapar.
//.toUpperCase(); //metninin bütün harflerini büyük harfe çevirir kalıcı olarak yapar.
//.trim()); //metnin başındaki ve sonundaki boşlukları alır.anlık yapar kalıcı olarak stringi değiştirmez
//.trimLeft(); //metnin solundaki boşlukları alır.kalıcı olarak stringi değiştirmez.
//.trimRight(); //metnin sağindaki boşlukları alır.kalıcı olarak stringi değiştirmez.
//.compareTo('Go'); // comperaTo iki metni karşılaştırır. gereiye 0 1 -1 döbdürür 0:Her iki değer birbirine eşit ise 1:Soldaki sağdakinden alfanumaratik oalrak büyük ise-1 :Soldaki sağdakinden alfanumaratik olarak küçük ise
