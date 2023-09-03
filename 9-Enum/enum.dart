void main (){
final customerMouse=Mouses.a4;
print(customerMouse.index);//index yani hangi sayıyla eşleştirildiği dizilerdeki gib 0 dan başlar
print(customerMouse.name);//enumun adını dönderir.
if(customerMouse==Mouses.apple){}//bu kod bir alt satırdaki koda göre çok daha kulanışlı ve geliştirebilir bir kod.
if(customerMouse=='apple'){} 




}
// enum numaralandırma olarak geçer.
//sabit değerler ile çalışmanız gerektiğinde kullanılan yapıdır.
//kısacası belirlediğiniz sayıları belirlediğiniz string ifadelerle kullanabilmeyi sağlar.
enum Mouses{
magic,
apple,
logitech,
a4,
}