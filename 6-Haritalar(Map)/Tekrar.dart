void main() {
  late Map<String, int> harita = {'ali': 50};
  harita['veli'] = 200;

  print("velinin parası ${harita['veli']}");

  for (var item in harita.keys) {
    print('$item = ${harita[item]}');
  }

  Map<String, List<int>> ad2 = {};
  ad2['ali'] = [2, 5, 6];
  for (var item in ad2.keys) {
    print(ad2[item]);
  }
}
