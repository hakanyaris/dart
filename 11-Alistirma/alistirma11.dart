
void main(){


final tablet1=Tablet(ekranKarti: 'ekranKarti', ram: 8, Hafiza: 'Hafiza');
tablet1.ekranTipi();
tablet1.yakala();
 
final leptop1=Leptop(ekranKarti: 'ekranKarti', ram: 8, Hafiza: 'ssd');
final leptop2=Leptop(ekranKarti: 'ekranKarti', ram: 8, Hafiza: 'ssd');
print(leptop1==leptop2);
print(leptop1-leptop2);

}

abstract class IBilsisayar {
  
 late String ekranKarti;
 late int ram;
 late String Hafiza;
  IBilsisayar({
    required this.ekranKarti,
    required this.ram,
    required this.Hafiza,
  });

}

class Tablet extends IBilsisayar  with EkranTipi{
  Tablet({required super.ekranKarti, required super.ram, required super.Hafiza});
  @override
  void ekranTipi() {
  dokunmatikmi=true;
  if(dokunmatikmi){ print('ekran dokunmatik');}
  else {print('ekran dokunmatik değil');}

  }
  
} 
class Leptop extends IBilsisayar{
  
  Leptop({required  super.ekranKarti, required super.ram, required super.Hafiza});
 
  void  klavyeIsiklimi(){
    
  }
  bool  operator == (Object obje){

    return  obje is Leptop && ram==obje.ram;
  }
 int operator -(Leptop leptop){
  return    leptop.ram- leptop.ram;
 } 
 
}

mixin EkranTipi{
  bool dokunmatikmi=false;

 void ekranTipi(){
  
 }

 void yakala(){print('YAKALA');}

  }