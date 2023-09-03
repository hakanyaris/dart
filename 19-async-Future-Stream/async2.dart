 Future<void> main(List<String> args) async {

  
print('başlangıç');
// burada Future ile tanımlı bir  forech döngüsü tanımlayıp her döngüde 2 sn bekletip işlem yaptırdık.
await Future.forEach([1,2,3,4,5,6], (int element) async {

   await Future.delayed(Duration(seconds: 2));
   print('işlem bitti');

});

print('son');
}