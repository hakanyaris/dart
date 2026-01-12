void main() {
  List<int> moneys = [100, 200, 300, 150, 50];
  print('müsteri 1 in parası: ${moneys[0]}');

  //aşağıda farklı bir liste tanımlama biçimi verdik.
  var liste = <String>[];
//Dinamik uzunlukta, büyüyebilen, küçülebilen liste tanımı

  //listeyi büyükten küçüğe sıralamak için sort
  moneys.sort();
  print(moneys); //listenin hepsini ekranda göstermek için
  moneys.add(5); // ekleme metodu sona ekler.
  print(moneys);

  // Liste ve objelerde(class) final kulanırsak listenin (objenin ve haritanın map de dahil) kendisine(özüne ) dokunamayız
  // ama içindeki nesnelere dokunabiliriz.ekleme çıkarma silme
  final List<int> moneys2 = [100, 200, 300, 150, 50];
  moneys2.add(95);

  // const ta ise listeninin  ve sınıfın (class)(map da dahil) hiçbir elemanına ve özüne dokunamayız. ekleme silme
  //v.b. yapılmaz
  const List<int> moneys3 = [100, 200, 300, 150, 50];
  //moneys3.add(55);  hata verir.

  // listenin dolaşılması ve koşul ekleme
  print('--------------------');

  for (int index = 0; index < moneys3.length; index += 1) {
    print('elemanlar: $index ${moneys3[index]}');

    if (moneys3[index] > 50) {
      print('bu sayı 50 den büyük: ${moneys[index]}');
    } else {
      print('bu sayı 50 den küçük ');
    }
  }

  //dynamic listeler içinde farklı veri tipleri barındıran listelerdir.Ama kullanımı önerilmez.
  List<dynamic> users = [1, 'a', false, 1.2];
  for (var item in users) {
    print(item);
  }

  //farklı bir şekilde liste tanımlaması
  //List<int> ornekListe = List.filled(length, fill, growable: false); length listenin uzunluğu ,
  // fill listenin  varsayılan değeri()bütün elemanları için growable: false listenin uzayabilir olup olamaması
  //growable varsayıla olarak false olur tanımlamasakta olur.
  List<int> ornekListe = List.filled(3, 0, growable: false);

  print(
      ornekListe); // çıktı[0,0,0]     bütün elemanlara varsayılan olarak sıfır atadık.
  ornekListe[2] = 4;
  print(ornekListe[2]);

 

  
}
