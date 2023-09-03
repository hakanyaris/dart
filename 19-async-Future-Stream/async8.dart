//async7 dersin devamı....
import '../11-Alistirma/alistirma1.dart';

void main(List<String> args) async{
// async7 derste Future yazınca fonsiyonumuz  main bittikten sonra en sonra çalışır.ve işlemini döndürür.
// eğer Future metotumuz  main sırasına göse çalışmasını istiyorsak (yani  main bitince değil sırası gelince Future 
// çalıacak ve sonucu bekleyecek) await yazıyoruz başına
await birinci().then((value) => print(value*value));
print('ikinci metot');

Stream <int> a=Stream.fromIterable([1,2,3,4,5]);
var sumStream1=await sumStream(a);
print(sumStream1);
}



Future<int> birinci() async{
int toplam=0;
for(var i=0;i<100000;i++)
{
toplam=toplam+i;
}
//Bu clas  dönüş tipi olarak Future <int> istediğinden  iki yolla çözebiliriz
//1- return Future.value(toplam); 
//2- Future<int> birinci async{   ...... return toplam}  yani  Future metotlarda async yazarsak geri dönüş tipini 
//otomatik olarak Future ayarlar ve return   Future.value(toplam); yerine return toplam; yazmamaız yeterli olur.
return toplam;

}


Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (final value in stream) {
    sum += value;
  }
  return sum;
}