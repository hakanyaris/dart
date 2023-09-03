void main() {
Map<String,int> users={'ahmet':20,'mehmet':30};

  print('ahmet in parası : ${users['ahmet']} tl');
  
for(var item in users.keys){
  
  print('$item = ${users[item]}');
}
for(int i=0;i<users.length;i++){
  
print('${users.keys.elementAt(i) }  ${users.values.elementAt(i)}'); 
}
  
// benim bankamda müşterilerimin birdan fazla hesabı olabilir.
//ahmetin 3 hesabında paralar  ; 100,200,300   mehmetin iki hesabı; 30,50  velinin 1 hesabı :30tl  var 
// 1- kişilerin hesaplarının kontrol et  herhangi bir hesapta 150 tl fazla varsa kredin hazır de.
 final Map<String,List<int>> vbBank={
   'ahmet':[100,200,300]};
  vbBank['mehmet']=[30,50];
  vbBank['veli']=[200];
  
  for(var item in vbBank.keys)
  {  //bankanın tüm müşterilerini dolaşıyoruz
                     
    for(var item2 in vbBank[item]!)
    {//müşterilerin  hesplarını ayrı ayrı dolaşıyoruz.
       // print('$item in hesabı $item2 tl var ');
      
       if(item2>150){print(' $item kredin hazır'); break ;}
      // yukarıdaki if de ahmet te iki tane 150 den büyük hesap olduğu için ik defa kredi hazr msj 
      //görünecek bunu önlemek için
      //koşul sağlandığında döngüden çıkan  break  ekliyoruz. break yerine return ekleseydik  komple programı
      // void main() i  sonlandıracaktı
      
    }
  }

  
  //2- bankadaki müşterilerin  hesaplarının toplamı 
   int toplam = 0; 
   for(var item in vbBank.keys)
  {  //bankanın tüm müşterilerini dolaşıyoruz
                   
    for(var item2 in vbBank[item]!)
    {//müşterilerin  hesplarını ayrı ayrı dolaşıyoruz.
       
       toplam = toplam +item2;
    }
  }
  print('-------------');
  print('bankada toplam $toplam tl var');
  
  //3-Her müsterinin  toplam parasını  gösteren bir program
  
  for (var item in vbBank.keys)
  {  int toplam =0;
    for(var item2 in vbBank[item]!)
    {
     
      toplam +=item2;
    }
    print('$item in toplam parası $toplam TL dir.');
   toplam=0;
  }


   Map<String, int> notlarim = {
    "ingilizce": 78,
    "matematik": 85,
    "edebiyat": 77,
  };
// map ı dolaşırken farklı bir kullanım
  for (var map in notlarim.entries) {
    print("elemanlarımızın key değeri : ${map.key} ve value değeri : ${map.value}");
  }
  
}
