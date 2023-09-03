// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {

 
}
//typedef  yani  tanımlı  bi fonksiyonu v.b durumu yeniden isimlendirmedir  takma isim takmadır bu sayede  kullnım
//kolaylığı olur.

typedef function1= Function(int);


void function2 <T>( T parametre){

print('fonkiyon 2');

}

typedef calculataCallBackFunction (int data);

class User2{
  int money;
  User2({
    required this.money,
  });



//fonksiyon içined parametre olarak fonksiyon istedik 
void calculateMoney(void Function (int data) onComplate){
                  //void yerine int yazıp aşağıda retur ile geriye(maine) sayı gönderebilirdik.
money+=5;
onComplate(money);//Oncomplate fonksiyonuna money i gönderiyoruz.main de çalışacak calculateMoney fonksiyonuna  moneyi gönderiyoruz
}}