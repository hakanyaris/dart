

//Stream akış demek.Mesela Bir akasudan su akıyor ne zaman balık çıkacağını bilemeyiz.Biz oltayı tutarız ve titreşimi 
//dinleriz eğer olta titreşirse balığı yakalarız.Stream da bağlı olduğu fonksiyonu dinler .hangi verinin hangi zamanda
//geleceği belli olmaz .fonsiyonu dinler ne  zaman veri gelirse bizim yazdığımız kodu gerçekleştirir.

//mesela bir video çekiyoruz dışarıdan video akış stream  şeklinde akıyor programımıza eğer video biterse,
//hata olursa v.b durumlarda video sitesi stream ile bize bilgi veryor ve biz  video sitesinin streamını dinliyoruz.
import 'dart:async';

void main(List<String> args)  {
  //2-stream folkiyonunun listen ile dinlemeye aldık.
                         //event değişkeni bizim Stream fonksiyonundan gelen velilerdir.event yerine başka bir şey yazabiliriz.
// myStreamFuncion().listen((event) { print('gelen veriler $event');  });

//3-StreamController Dart da streamlar üzerinde herşeyi yapabileceğimiz  hazır bir sınıftır.stream oluşdurmak 
//verileri dinleme hata olursa ekrana birşey yazdırmak v.b streamla ilgiliyapılabilecek herşeyi bu sınıfla yapabiliriz. 
//Stream sınıfınız aşağıdaki gibi (1-)kendimiz oluşturursak birçok ayrıntı var listenlerin durumu neyin ne zamantetikleneceği
//kimin öncelikli olacağı hata durumlaarı olursa ne olacak gibi .kendimizin olurşturması riskli bu yüzden aşağıdaki
//hazır stream sınıfını kullanmamız tercih ediliyor.
StreamController _mystreamController= StreamController();

//4-
void functionForStreamController() async {
for(int i=0;i<10;i++)
 {
  await Future.delayed(Duration(milliseconds: 500));

  //burada kendimiz yapay  bir hata adError() oluşturuyoruz ki dinleyene bu hata geldiği görelim 
  if(i==6){_mystreamController.addError('Hata Oluştu');}
                    //sink giriş noktası
  _mystreamController.sink.add(i+1);
 }
 _mystreamController.close();//closed ile akışı kapatıyoruz böylece bunu dinleyen herkez aşışın kapandığını bu closed ile anlayacak.
}
//5-
functionForStreamController();
//6-
_mystreamController.stream.listen(
     (event) {print('stream controler verileri ${event*10}');}
     
     // functionForStreamController close yazılmazsa onDone  metotu çalışmaz
     ,onDone: () {  print('Streamdan gelen veri bitince onDone fonksiyonu çalışır.');} 
     ,onError:(e){print(e);}//ana akışımızdan hata yakalarsa   onError fonksiyonunu yayınlayacak
     ,cancelOnError: true //cancelOnError bir  hata alırsa  akışa devam edilsin mi?
     );

  Stream<int> bankMoney=Stream.empty();
  // bankMoney=dataAddBankMoney(10, 50);
  dataAddBankMoney(10, 50).listen((event) {print(event);});

}


//1-Stream sınıfını kendimiz oluştırıyoruz ilk olarak
Stream <int> myStreamFuncion()async*{
  
  for (int i=0;i<10;i++){
    await Future.delayed(Duration(seconds: 1));
   yield i+1;// bir fonksiyon burdaki gibi stream döndürüyorsa return değil yield yazılmalıdır.

  }
}


//7-
Stream <int> dataAddBankMoney(int retryCount,int money)async*{
int _localRetary=0;
while(_localRetary<retryCount){
   await Future.delayed(Duration(seconds: 1));

  _localRetary++;
  yield money +=5;
}


}