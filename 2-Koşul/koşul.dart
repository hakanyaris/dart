void main() {
  int money = 15;

  if (money > 10) {
    print("zenginsin");
  } else {
    print("fakirsin");
  }
  //switch -case
  //case = kasa demek
  const int sayi = 2;

  switch (sayi) {
    case 2:
      print('bravo');
      break;
    case 1:
      print('olur');
      break;
    case 0:
      print('yeterli');
      break;
    default:
      print("geçersiz");
  }

  //  switch -case -new case
  String command = 'DENIED';
  switch (command) {
    case 'OPEN':
      // executeOpen();
      print('OPEN');
      continue newCase; //  eğer burdaki şart olursa aşağıdaki satırları atlayıp newCase etiketinde yürütmeye devam eder.

    case 'DENIED': // Boş kasa düşer.
    case 'CLOSED':
      // executeClosed(); // Runs for both DENIED and CLOSED,
      print('CLOSED');
    newCase:
    case 'PENDING':
      // executeNowClosed(); // Runs for both OPEN and PENDING.
      print('PENDING');
  }

  //------------------------------

  int i = 0;
  while (i < 5) {
    print('beş defa yazdır.');
    i++;
  }

  int a = 0;

  do {
    print('altı defa yazdır.');
    a++;
  } while (a < 6);

  for (int i = 0; i < 10; i++) {
    if (i > 5) {
      print("i nin değeri  $i");
    } else {
      //i nin değeri 5 ten küçük olduğu durumda atlıyor
      continue;
    }
  }
  //continue yani içinde bulunduğu koşul şağlanırsa  aşağıdaki kodları gerçekleştirmez ve devam eder döngüye.
  for (var i = 0; i < 3; i++) {
    print("Outerloopi:${i}");

    for (var j = 0; j < 5; j++) {
      if (j == 3) {
        continue;
      }
      print("Innerloopj:${j}");
    }
  }
  //break ise içinde bulunduğu döngüden tamamen çıkar döngüyü bitirir.
  //döngünün içinde yazılırsa döngüyü ve fonksiynu sonlandırır. main içinde for yazılır ve forun içinde
  //return yazılırsa  return koduna gelince maini sonlandırır.

  //aşağıda döngüye isim veriyoruz
// x<=10 dediğimiz halde 4 olunca çıkmasını sağlıyacağız
  birinciDongu:
  for (int x = 1; x <= 10; x++) {
    for (int y = 1; y <= 3; y++) {
//break komutu ile isim verdiğimiz döngüyü x==4 olunca sonlandırıyoruz.
      if (x == 4) {
        break birinciDongu;
      }
      print("$x x $y = ${x * y}");
    }
  }
  // List candidates = [1, 2, 3, 4, 5];
  // for (final candidate in candidates) {
  //   print(candidate.interview());
  // }

  // for (final Candidate(:name, :yearsExperience) in candidates) {
  //   print('$name has $yearsExperience of experience.');
  // }
}
