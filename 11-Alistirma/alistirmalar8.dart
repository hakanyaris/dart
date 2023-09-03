void main(){
Map <String,double> veri={'hakan':22.5,'erhan':15.3};
print(veri['hakan']);

for(var item in veri.keys){
//print(item);// anahtarları dolaşır.
 for (int i=1 ; i<veri.length;i++){
  print('$item = ${veri[item]}');
  
 }

}
print(veri.length);
Map<String,List<int>> deger={};
deger['kemal']=[5,6,3];
deger['gülen']=[9,3,7];
for  (var item in deger.keys){
  for(var item2 in deger[item]!){
    
  }
}
}