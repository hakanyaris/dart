void main(List<String> args) {
                       //then yani ornekFonksiyon işlemini bitirdikten sonra bunları gerçekleştir.
  ornekFonksiyon(2, 4).then((gelecekDeger) => print(gelecekDeger));
  //then sonra demek. Fonksiyonumuzu çağırdık 
  //then içerisine isimsiz bir lamda fonksiyon alıyor
  //bizden bir değişken girmemizi bekliyor
  //ve gelen değere istediğimiz işlemi yapıp
  //return ile geri döndürdük


}

Future<int> ornekFonksiyon(int a, int b) => Future.value(a + b);
//Gelecekte int tipinde değer döndürecek bir fonksiyon tanımladık
//Bize işlemi bitince a+b yi döndürecek.