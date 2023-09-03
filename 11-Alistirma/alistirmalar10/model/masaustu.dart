import 'bilgisayar.dart';

class Masaustu implements IBilgisayar {
  
  String? anakart;
  String hafizaAygiti;
  String islemci;
  int ram;

  
  Masaustu({
    this.anakart,
    required this.hafizaAygiti,
    required this.islemci,
    required this.ram,
  });

  
  void erkranTipi(String ekranTipi) {
    print('flat');
  }

}