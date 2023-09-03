void main(List<String> args) async{
  print('1. adım');

Future.delayed(Duration(seconds:3),(()=>{
  
print('2. adım') 
}));
 

print ('3.adım');
await Future.delayed(Duration(seconds: 0),(() => print('4.adım')));
var d= await metot(5,2);
print('5. adım $d');


metot(3,5).then((value) => print( '6. adım : $value'));

Future.delayed(Duration(seconds:2 )).whenComplete(() => print('7. adım'));
print('8.adım');
metot2().then((value) => print(value)).catchError((e)=> print(e)).whenComplete(() => print('işlem başarılı')); 
} 




Future <int> metot (int a, int b) {

return Future.value(a+b);

}

Future<String> metot2() async{
return 'Hakan';

}




