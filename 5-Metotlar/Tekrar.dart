void main() {
  topla();
  topla2(7, 8);
  print(topla3());
  print(yazdir(4, 5));
  convertToDolar(5, dolar: 6);
  convertToDolar2(7, 5);
}

void topla() {
  int b = 7;
  int a = 8;

  print('${a + b} Topladım');
}

void topla2(int a, int b) {
  print(a + b);
}

int topla3() {
  int a = 7;
  int b = 8;
  return a + b;
}

String yazdir(int a, int b) {
  return (a + b).toString();
}

int convertToDolar(int money, {int dolar = 2}) {
  return dolar * money;
}

int convertToDolar2(int money, [int dolar = 2]) {
  return dolar * money;
}

//  {} ile [] farkı :
//  {} içinde yazdığımız değişkenler sınıfı  mainde kullanırken ctrl + space basınca değişken adı ile tanımlanır.
//  [] içine  yazdığımız değişkenler  sınıfı mainde kullandığımızda ctrl + space basınca değişken  adı gelmez
//  sadece değişken değeri yazarak değişkene değer atarız.
//  sonuç {} ile iş yapmak daha mantıklı

//bir metor geriye null değer döndürebilmesi için değişke tipini  yanına ? koymalıyız
int? nullDegerdeDonebilir(int? k) {
  if (k == null || k == 0) {
    return null;
  }
}


int? nullDegerdeDonebilir2(int? k) {
  if (k == null || k == 0) {
    return null;
  }
}
