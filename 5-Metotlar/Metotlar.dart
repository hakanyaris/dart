void main() {
 

  controlUserMoney(-1);
  print(convertToDolar(45, 13).toString() + ' dolar');

  print(convertToDolar2(45).toString() + ' dolar');
  print(convertToDolar2(45, dolarIndex: 15).toString() +
      ' dolar'); //isteğe bağlı dolarindexi tanımlardan diğerlerinden
  // farklı olarak değişkenin adı yazılmak zorundadır.

  print(convertToDolar3(userMoney: 100, dolarIndex: 12));

   
  print('çarpma sonucu : ${carp(6)}');
}

// değişken alan metot geriye değer döndürmeyen
void controlUserMoney(int money) {
  if (money > 0) {
    print('para var');
  } else
    (print('para yok'));
}



// değişken alan metot geriye değer döndüren metot
// dolarindex  kullanıcı tarafından doldurulmak zorunda
int convertToDolar(int userMoney, int dolarIndex) {
  return userMoney ~/ dolarIndex;
}



// değişken alan metorlarda bazı parametreler kullanıcı tarafından isteğe bağlı olarak açılabilir
//dolar index kullnıcı tarafından doldurulmak zorunda değil ama sabit
//birdeğeri  ister veririrz sabit bir değer istemezsek 43 satırdaki  bol fonk. gibi null alabilir deriz .
int convertToDolar2(int userMoney, {int dolarIndex = 14}) {
  return userMoney ~/ dolarIndex;
}

int? bol({int? a, int?b}){
  if(a!=null && b!= null) return a+b;
  
}


// Dart dilinde bir değişkene değer atamazsak dart sabit değer atamaz ve null olur .C sharp int e 0 boole false verir
// Dart null değerini verir.Bu nedenle Metot parametrelerinde isteğe başlı değişkenelere metot () paratezi
//içinde değer atamak istemeyip daha sonra değer atamak istersek başına required eklemeliyiz.
int convertToDolar3({required userMoney, int dolarIndex = 14}) {
  return userMoney ~/ dolarIndex;
}


//Dart ta metotların başına void int strin yazmazsak meot dynamiz metot olur.
//dynamic metotlar içinde return 15; yazarsak geriye int döndürür. return 'ALİ GEL', yazarsak geriye string döndürür.
 //dynamic metotta içine return yazmazsak  void gibi çalışır.
 Metot(){
  return 'Metot Sting döndürür.';
 }




//Fonksiyon paretrelerine değer girilmemesi durumunda otomatik değer  verdirme.
int carp(int a ,[int b=2]){

return a*b;

}