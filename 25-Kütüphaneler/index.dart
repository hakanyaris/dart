//2-Kutuphaneler.dart  kütüphanesini buraya ekliyoruz
import 'Kutuphaneler.dart';
//4- ikinci kütüphaneyi de yukarıdaki gibi ekleyebiliriz ama as eklersek aşağıda kutuphane2. ile içindekilere ulaşabiliriz.
import 'ikinciKutuphane.dart' as kutuphane2;

main() {
  //Kutuphaneler.dart saydasındaki her değişken ve fonksiyone burdan ulaşabiliyoruz.
  print(sayi);
  olustur();
  //4-b
  print(kutuphane2.sayi2);
}
