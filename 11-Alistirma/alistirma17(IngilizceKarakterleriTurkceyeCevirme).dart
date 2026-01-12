import 'dart:ffi';
import 'dart:io';

void main() {
  // String? value = stdin.readLineSync();
  convertToEnglishCharacters('alimş');
}

String convertToEnglishCharacters(String text) {
  Map<String, String> Character = {
    "ç": "c",
    "Ç": "C",
    "ğ": "g",
    "Ğ": "G",
    "ı": "i",
    "İ": "I",
    "ö": "o",
    "Ö": "O",
    "ş": "s",
    "Ş": "S",
    "ü": "u",
    "Ü": "U",
  };

  List<String> text3 = List.filled(text.length, '', growable: false);

  //girilen  srtiring değer kadar döngü
  for (int i = 0; i < text.length; i++) {
    //map değeri içindeki elemanlar kadar döngü
    for (int a = 0; a < Character.length; a++) {
      if (text[i] == Character.keys.elementAt(a)) {
        //text in  her elemanını map ın her bir elemanıyla karşılaştırır.
        text3[i] = Character.values.elementAt(a);
        //text ve map elemanı ayı ise text3 listesinin i . karakterine mapın vale değerini atar
        break; //içinde bulunduğu 1. döngüngüden çıkar fakar 2. üst döngü devam eder.
      }

      text3[i] = text[i]; //her bir text elemanını  text3 ekler.
    }
  }
  // boş bir liste belirledik uzunluğu  text3 kadar
  List<String> text4 = List.filled(text3.length, '', growable: false);
  //text3 listesini ters çevirmek için kulallandık döngüyü
  for (int x = 0; x <= text3.length - 1; x++) {
    text4[x] = text3[text3.length - 1 - x];
  }
  print(text4);

  //text4 listesini c stringine kaydetmek için döngüyü oluşturduk.
  String c = "";
  for (int x = 0; x < text4.length; x++) {
    c = text4[x] + c;
  }
  print(c);
  return c;
}
