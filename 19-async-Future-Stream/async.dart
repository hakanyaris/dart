 Future<void> main(List<String> args) async {
//Dart dilinde senkron (sync) bir yapı aynı anda sıra beklemeden bir çok kodun çalışabilmesidir. Asenkron (async) durumda 
//ise hepsi  birbirini bekleyecektir.


//async(asekron) demek bir programda mainde  herşey sırayla üsten alta doğru kodlar sıra ile çalışırken async olarak çalımasını 
//istediğimizde  Future.delayed(Duration(second:2)) olarak belirttiğimiz kod maindeki bütün işlemler bittikten 
//sonra çalışır ve 2 sayine  bekletir.
// await Future.delayed(Duration(second:2)) dersek  kodumuz ordaki sırada çalıştırır ama sırası geldiğinde 2 saniye 
//bekletir ve aşağıdaki koda geçer.

print('başlangıç');  

//bu Future metoda sıra gelince  5 saniye bekletir  (ama  bu 5 sn süre içinde aşağıdaki kodlara geçişine izin verir )
//çalıştırır.
Future.delayed(Duration(seconds: 5),(() => print('programı kapat')));
print('orta');   

//await metoduna sıra gelince  aşağı koda geçirmez 6 sn bekletir ve  kendisi çalıştıktan sonra aşağıdaki kodalara izin verir.                            
await Future.delayed(Duration(seconds: 6)).whenComplete(() =>{print('await ')}); //başına await koyduktan sonra void metodumuz da Future ve async eklemliyiz. 
print('son');
print('enson');
}