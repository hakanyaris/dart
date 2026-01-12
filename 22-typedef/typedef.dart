void main() {
  Temp x = First; //
  

  x(5);
  x = Second;
  x(5);
}

typedef Temp(int a); //Temp  adlı bir şey oluşturuyoruz veri tipi typedef.

First(int a) {
  print('İlk Fonksiyon: ${a + 1}');
}

Second(int a) {
  print('İkinci Fonksiyon: ${a + 2}');
}
