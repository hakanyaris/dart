void main() {
   int money =15;
  
  if(money>10){
    print("zenginsin");
    
  }
  else{
    print("fakirsin");
  }
  
  const int sayi = 2;
  
  switch(sayi){
      
    case 2:print('bravo')  ;break;
    case 1:print('olur'); break;
    case 0:print('yeterli');break;
    default : print("geçersiz");
      
      
  }
 int i =0;
  while(i<5){
     print('beş defa yazdır.');
   i++;
  

  }
 
 int a=0;

  do{
 print('altı defa yazdır.');
 a++;
  }
  while(a<6);

  for (int i=0; i<10 ; i++){
   
  if(i>5){
   
    print ("i nin değeri  $i");
  }
    else { 
      //i nin değeri 5 ten küçük olduğu durumda atlıyor
      continue;
  
      }
  }
  //contiue yani içinde bulunduğu koşul şağlanırsa  aşağıdaki kodları gerçekleştirmez ve devam eder döngüye.
   for (var i = 0; i < 3; i++) { 
      print("Outerloopi:${i}"); 
      
      for (var j = 0; j < 5; j++) { 
         if (j == 3){ 
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
birinciDongu : for (int x=1; x<=10 ; x++){
   
   for (int y =1; y<=3 ; y++) {
//break komutu ile isim verdiğimiz döngüyü x==4 olunca sonlandırıyoruz.
    if(x==4){break birinciDongu;}
    print ( "$x x $y = ${x*y}");
  
    }  

  }


  }

