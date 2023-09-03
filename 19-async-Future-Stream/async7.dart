//async6 dersin devamı....
void main (){

print('Birinci kod');

ikinciKod().then((gelecekdeger) => print(gelecekdeger))
           .catchError((e)=>print(e) )//  hata olursa yakala ve bize hatayı bildir.
           .whenComplete(() => print('işlem başarılı'));// whenComplate kısmında her durumda çalışır.   
print('üçüncü kod');



}   


// birinci kod ve üçüncü kod çalıştıktan sonra  ikinciKod() metotu devreye girer.
Future <String> ikinciKod(){
//Clasımız Future <String> tipinde olduğu için   dmbüş tipi olarak return 'ikinci kod' yazamayız.Future tipinde bir 
//strng değer  döndürmemiz gerekiyor Future. yazarcak furue metotları görürüz.

//async6 dersten farklı olarak Future.delayed ekledik 
                      // burda yukarıdaki main metotu bittikten sonra 5 sn bekler ve içrideki  fonksiyonu çalıştırır.
return Future.delayed(Duration(seconds: 5),(()=>'ben İkinci kodum benim işim uzun'));

}
 
