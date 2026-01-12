void main() {
  List<int> Sayilar = [4, 6, 7];

  List Sayilar2 = ['3', '4', '5'];

  Sayilar.setRange(0, 2, [1, 2, 3], 1);
  print(Sayilar);
  // late List Sayilar3;
  // for (int index = 0; index < Sayilar.length; index++) {
  //   if (Sayilar[index] == 3) {
  //     print(3);
  //   }
  // }

  // for (var item in Sayilar) {
  //   if (item == 3) {
  //     print(3);
  //   }
  // }

  // List c = [];
  // c.add('a');
  // print(c);

  // List<String> x = ['ali', 'kemal', 'Hasan', 'İnal', 'Ali'];
  // if (x.elementAtOrNull(3) != null) {
  //   x.fillRange(0, 3, 'ahmet');
  // }
  // for (var element in x) {
  //   print(element);
  // }
}
