import 'dart:async';

void main(List<String> args) async{
await stream().listen((event) {print(event);});

StreamController streamController=StreamController();

void functionStream() async {

 for(int i=1;i<10;i++){
  await Future.delayed(Duration(microseconds: 5000));
 streamController.sink.add(i);
 if(i==7){ streamController.addError('hata verdi');}

 }
 streamController.onCancel;
}


functionStream();
streamController.stream.listen(
      (event) {print(event);}
      ,onError: (e){print(e);}
      ,cancelOnError: true
                                    
);

}

Stream <int> stream()  async*{
for (int i =1;i<10;i++){
await Future.delayed(Duration(milliseconds: 1000));
yield i;

}
  
}
