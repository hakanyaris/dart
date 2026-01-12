void main() {
  hesapla();
  controlUserMoney(-1);

  print(convertToDolar(45, 13).toString() + ' dolar');

  print(convertToDolar2(45).toString() + ' dolar');
  print(convertToDolar2(45, dolarIndex: 15).toString() +
      ' dolar'); //isteğe bağlı dolarindexi tanımlardan diğerlerinden
  // farklı olarak değişkenin adı yazılmak zorundadır.

  print(convertToDolar3(userMoney: 100, dolarIndex: 12));

  print('metot geri dönüş tipi : ${Metot.runtimeType}');
  print('çarpma sonucu : ${carp(6, 4)}');

  void printElement(int element) {
    print(element + 1);
  }

  var list = [1, 2, 3];

// Pass printElement as a parameter.
  list.forEach(print);

  print(islemiSenSec((a,b)=>a+b, 5, 6));

  print(bol2(8, 4));

  //--------------------------------------------------------------------
//void Function() x     yabi x adında bir  isimlendirilmiş fonksiyon tanımlaması
  void greet(String name, {String greeting = 'Hello'}) =>
      print('$greeting $name!');
// aşağıda g adında bir fonksiyon(Function) tanımladık ve bu fonksiyonu yukarıdaki greet adındanki fonksiyona eşitledik
  void Function(String, {String greeting}) g = greet;
  g('Dash', greeting: 'Howdy');

//Bir anonim fonsiyon tanımlama ve anonim fonksiona parametra gönderdiğiniz fonksiyon tanımlama
  var AnonimFonksiyonlarlaToplama =
      (x, y) => (print(x + y)); //ANONİM FONKSİYONUMUZ
  SayilariUretmeFabrikasi(Sayilar) {
    //ANONİM FONKSİYONA PARAMETRE GÖNDERDİĞİMİZ FONKSİYONUMUZ
    Sayilar(5, 8);
  }

  SayilariUretmeFabrikasi(AnonimFonksiyonlarlaToplama);

  //.................................................
  var fonk_al = fonkDondur(3);

  print(fonk_al(5)); //8

  //-----------------------------------------------
  //Yıtrmalar
  var charCodes = [68, 97, 114, 116];
  var buffer = StringBuffer();
//----------
// iyi kod(lambda kulanılmadan)
// yırtmaın manası lambda ifadeleri kullanmadan işlem yapma anlamındadır.
// Function tear-off
  charCodes.forEach(print);

// Method tear-off
  charCodes.forEach(buffer.write);
//----------
// Kötü kod  (lambda  kullanılmış)
// Function lambda
  charCodes.forEach((code) {
    print(code);
// Method lambda
    charCodes.forEach((code) {
      buffer.write(code);
    });
  });
//------------------------------------------------
//inceleme
// void foo() {} // A top-level function

// class A {
//   static void bar() {} // A static method
//   void baz() {} // An instance method
// }

  Function x;

  // Comparing top-level functions.
  x = foo;
  print(x);

  assert(foo == x);

  // Comparing static methods.
  x = A.bar;
  assert(A.bar == x);

  // Comparing instance methods.
  var v = A(); // Instance #1 of A
  print(v);
  var w = A(); // Instance #2 of A
  print(w);
  var y = w;
  x = w.baz;

  // These closures refer to the same instance (#2),
  // so they're equal.
  assert(y.baz == x);

  // These closures refer to different instances,
  // so they're unequal.
  assert(v.baz != w.baz);

//---------------------------------------
//fonsiyon bir dönüş değeri belirtilmezse sonuc null olur.
  fonk() {}
  assert(fonk() == null);
//Bir fonksiyonda birden fazla değer döndürebilir.
  print(fonk2());
}

//************************************************************** */
//************************************************************** */

//1-değişken almanayan ve geriye değer döndürmeyen metot.
void hesapla() {
  print('hesapla');
}

//2-  değişken alan metot geriye değer döndürmeyen
void controlUserMoney(int money) {
  if (money > 0) {
    print('para var');
  } else
    (print('para yok'));
}

// 3-değişken alan metot geriye değer döndüren metot
// dolarindex  kullanıcı tarafından doldurulmak zorunda
int convertToDolar(int userMoney, int dolarIndex) {
  return userMoney ~/ dolarIndex;
}

// değişken alan metorlarda bazı parametreler kullanıcı tarafından isteğe bağlı olarak  doldurabilir.
//dolar index kullnıcı tarafından doldurulmak zorunda değil ama sabit
//birdeğeri  ister veririrz sabit bir değer istemezsek 42 satırdaki  bol fonk. gibi null alabilir deriz .
int convertToDolar2(int userMoney, {int dolarIndex = 14}) {
  return userMoney ~/ dolarIndex;
}

//kullanıcı seçmeli parametrelere required ekliyerek doldurulmasını mecburi kılabiliriz.
int? bol({int? a, int? b}) {
  if (a != null && b != null) return a + b;
}

//
int topla({int? a, required int b}) {
  return a ?? 5 + b;
}

// Dart dilinde bir değişkene değer atamazsak dart sabit değer atamaz ve null olur .C sharp int e 0 boole false verir
// Dart null değerini verir.Bu nedenle Metot parametrelerinde isteğe başlı değişkenelere metot () paratezi
//içinde değer atamak istemeyip daha sonra değer atamak istersek başına required eklemeliyiz.
int convertToDolar3({required userMoney, int dolarIndex = 14}) {
  return userMoney ~/ dolarIndex;
}

//Dart ta metotların başına void int string yazmazsak meot dynamik metot olur.
//dynamic metotlar içinde return 15; yazarsak geriye int döndürür. return 'ALİ GEL', yazarsak geriye string döndürür.
//ama dönüş tipi (runtype) dynamic olur yine.
//dynamic metotta içine return yazmazsak geriye dynamic değer döndürür.
Metot() {
  return 'Metot Sting döndürür.';
}

//Fonksiyon parametrelerine  değer girilmemesi durumunda otomatik değer  verdirme.required değeri verilemez!
int carp(int a, [int b = 2]) {
  return a * b;
}

//bir fonksiyona fonsiyonu parametre olarak verme
//test fonksiyonu için return kısmı boş .bunu kullanıcı yukarıda return sonrasını belirleyecek.
int islemiSenSec(int test(int a, int b), int c, int d) {
  return test(c, d);
}

//Bir fonksiyonu bir değişkene atayabilirsiniz, main içinde devamı var.

var bol2 = (int a, int b) => a / b;

//Geriye fonksiyon döndüren bir fonsiyon tanımlayabiliriz.main içinde devamı var.
Function fonkDondur(int a) {
  return (int b) => b + a;
}

//--------------------------------------------------------------------
//incelemem
void foo() {} // A top-level function

class A {
  static void bar() {} // A static method
  void baz() {} // An instance method
}

//--------------------------------------------------------
//Bir fonksiyonda birden fazla değer döndürebilir.
(String, int) fonk2() {
  return ('something', 42);
}

(int, bool) fonk3(int a, bool b) {
  return (a, true);
}
