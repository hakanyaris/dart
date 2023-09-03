void main(){

User3 users=User3('hakan', 45);
print(users.name);//ali değeri admine eşit mi

final dayselect1=days.cuma;
if(dayselect1.checkDay('cuma')){print('cuma');}

String admin='ali';
print(admin.isAdmin());

String? name;
if(name.isAdmim2()){print('girilen değer eşleşiyor.');}
else{print('girilen değer eşleşmiyor');}



}



class User3{
final String name;
final int money;

  User3(this.name, this.money); 
}

//extension yani  claslara enumalara  v.s şeylere eklemlenerek onun statik bir metodu gibi davranır.
extension User3ControlExtension on User3{  
 
void controlName(){
  print(name);
}

}

enum days{

pazartesi,sali,carsamba,persembe,cuma

}
//ekstension u enuma eklemledik
extension dayselected on days{
bool checkDay(String day){
  return this.name==day;
}


}

//extensinu string ve num gibi değişkenlere uygulayabiliriz.list ifadeerde de kullanılır.
// burada string  sınıfın yeni bir statik metot ekledik.girilen strig değerin admin işe tru değilse false döndürür. 
extension StringUserchechExtension on String{
bool isAdmin(){
  return this.toLowerCase() =='admin'.toLowerCase();
}

}


//string ifademin null olabileceği ve gelen string değeri 'admin' ile aynı ise true değilse false 
//string ifade  null ise  yani değer gelmezse boş kabul et 
extension StringUserchechExtension2 on String?{
 bool isAdmim2(){
  return (this ?? '' ).toLowerCase() == 'admin'.toLowerCase();//this yani gönderilen değer ?? yani null ise '' yani boş string kabul et.
 }
}



