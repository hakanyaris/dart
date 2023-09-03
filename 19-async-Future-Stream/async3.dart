void main(List<String> args) {
  //Burada Futueleri de kendi arasında zamanlayabilriz.await yazmadığımız için ilk önce hello 1 ve hello 3 çalışır
  //1 sn sonra hello 4 çalışır  4 veya 5 sn sonra da hello2 çalışır. 
  //
print('hello1');
  Future.delayed(Duration(seconds: 5)).whenComplete(() {
    print('hello2');
  });
  print('hello3');

Future.delayed(Duration(seconds: 1)).whenComplete(() {
    print('hello4');
  });


}