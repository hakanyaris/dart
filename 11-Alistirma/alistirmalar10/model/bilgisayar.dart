
abstract class IBilgisayar {
String islemci;
String? anakart;
late int ram;
late String hafizaAygiti;
  IBilgisayar(this.islemci,{
    
    this.anakart,
    required this.ram,
    required this.hafizaAygiti,
  });

  void erkranTipi(String ekranTipi){ 
    print(ekranTipi);
  }

}
