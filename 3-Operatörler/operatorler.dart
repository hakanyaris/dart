import 'dart:io';

void main() {
  int a = 20;
  int b = 7;
  int c = a ~/ b;
  print(
    "a ~/ b ifadesi ayı b ye böler ve sonucu başındaki tam sayıya yuvarlar. Sonuç; " +
        "$c",
  );

  //MOD ALMA

  int f = 20;
  print('f nin 7 ile bölümünden kalan : ${f % 7}');

  //

  int x;
  int y;

  x = 0;
  y = ++x; // y nin değerini almadan önce x i arttırır.
  assert(x == y); // 1 == 1
  //assert içindeki önerme doğru değil ise proramda hata fırlatır yani durdurur.

  x = 0;
  y = x++; //y nin değerini x e(0) eşitledikten sonra x i arttır(x=1 olur.)
  assert(x != y); // 1 != 0

  // is ve as operatörleri
  //1- İS is operatörü, bir nesnenin belirli bir tür ile uyumlu olup olmadığını kontrol etmek için kullanılır.
  //is operatörü işlem sonucunda bir boolean (true veya false) değeri döndürür. Dönen değer “true” ise, nesne bu
  //türe dönüştürülmeden kullanılabilir demektir. Bu nedenle “is” operatörü, tip güvenliği sağlar ve istenmeyen hata
  //ayıklamalarını önler.

  Object nesne = "Merhaba, dünya!";

  if (nesne is String) {
    print("Nesne bir string türündedir.");
  } else {
    print('Nesne String türünde değildir.');
  }

  //as operatörü, bir nesneyi belirli bir tipe dönüştürmeye çalışır. Eğer dönüşüm başarılı ise, nesne istenen
  // tipe dönüşür; aksi takdirde null değeri döner. as operatörü kullanılırken, nesne eğer belirli bir tipe
  // dönüşemiyorsa bir istisna (exception) fırlatılmaz. “as” operatörü, dönüşümü başarısız olabilecek durumlar
  //için kullanılır ve hata ayıklamayı kolaylaştırır.

  Object nesne2 = "Merhaba, dünya!";
  String metin = nesne as String;
  if (metin != null) {
    print("Nesne bir string türüne dönüştürüldü.");
  }

  // condition ? expr1 : expr2
  //Koşul doğruysa , expr1'i değerlendirir (ve değerini döndürür); aksi takdirde, expr2'nin değerini değerlendirir
  //ve döndürür .
  int d = 5;
  int e = 6;
  d == e ? 'd e ye eşit ' : 'd e ye eşit değil';
  //expr1 ?? expr2
  //Eğer expr1 boş değilse, değerini döndürür; aksi takdirde, expr2'nin değerini değerlendirir ve döndürür .
  String? v;
  v ?? 'ali';

  // ... operatörü ...? Spread Operator (Yayma Operatörü) olarak adlandırılır. Bu operatör, bir koleksiyonun
  // (List, Set veya Map) tüm elemanlarını çıkarıp başka bir koleksiyonun içerisine tek tek eklemek için kullanılır.
  // Ayrıca, null güvenliğini (Null Safety) sağlamak amacıyla kullanılan ...? (Null-aware Spread Operator) versiyonu da mevcuttur.
  List<int> tekSayilar = [1, 3, 5];
  List<int> dogalSayilar = [0, ...tekSayilar, 4, 5, 6, 7, 8, 9];
  for (var element in dogalSayilar) {
    print(element);
  }
}
