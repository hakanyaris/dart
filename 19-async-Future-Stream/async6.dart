void main (){

print('Birinci kod');

ikinciKod().then((gelecekdeger) => print(gelecekdeger));//ikinciKod Future olduğu için programın sonında çalışacak.
print('üçüncü kod');



}   


// birinci kod ve üçüncü kod çalıştıktan sonra  ikinciKod() metotu devreye girer.
Future <String> ikinciKod(){
//Clasımız Future <String> tipinde olduğu için   dmbüş tipi olarak return 'ikinci kod' yazamayız.Future tipinde bir 
//strng değer  döndürmemiz gerekiyor Future. yazarak furue metotları görürüz.
//veya metotun başına async ekleyerek  Future <String> ikinciKod() async { } returnu 'ikinci kod' olarak yazabilirdik.

return Future.value('ikinci  kod');

}
 
