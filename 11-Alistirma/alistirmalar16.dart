void main(List<String> args){
  listeyeEkleme('eleman',listeyiYazdirma);
  


}

var Liste=['ali','ahmet','kemal','suat'];

void  listeyeEkleme(eleman,callback) async {

 await Future.delayed(Duration(seconds: 2)).whenComplete(() => Liste.add(eleman));
callback();
}

void  listeyiYazdirma ()  {

Future.forEach(Liste, (element) => print(element));

} 