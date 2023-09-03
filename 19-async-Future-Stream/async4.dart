// bu derste anlamadığım noktalar var await kısmı çalışmasına rağmen neden programı bitti yazıp sonra awaitin içine giriyor.
void main() async{

   print('program başladı');
   dosyaIceriginiGoster();
   var sonuc=await Future.delayed(Duration(seconds: 8),() {
   return 'indirilen dosya içeriği 2 '; // burada geriye Future<T>  döndürür.yani sadece string döndürmez future<string> dönd.
});

   print(sonuc);
   print('program bitti');

}


dosyaIceriginiGoster() async {//await yazdığımız metodun başına da async yazmak zorundayız

print('dosya içeriği gösterilecek');
var dosyaIcergi=await dosyaIndir();// await(beklemek) yazmazsak bu işlemi yapmaz .sonuç string döndü
print('Dosya içeriği :$dosyaIcergi');


}

Future <String>  dosyaIndir()  {
print('dosya indirme işlemi başladı');

//sleep(Duration(seconds: 15));// burada kullandıımız sleep(uyku) programı 15 sn kitler uyutur ve program ilerlemez



//bilgisayarın kitlenmemesi için Future kulnaıyoruz .10 saniye bekle ve  lambda içindeki komutları yap.                                                     
  Future<String> sonuc=Future.delayed(Duration(seconds: 5),() {
   return 'indirilen dosya içeriği'; // burada geriye Future<T>  döndürür.yani sadece string döndürmez future<string> dönd.
});


print('dosya indirme işlemi bitti');

// return 'indirilen dosya içeriği';
return sonuc;

}