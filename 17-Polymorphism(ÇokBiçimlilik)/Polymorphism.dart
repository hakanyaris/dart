void main(){
//polymorphim yazılımdan if ve else lerden çok claslar abstract class ve kalıtımla işleri halletmeye deniz.
//aşağıdaki kodu if else yerine kalıtmıla hallettik. 
IUser user=Turk();
user.sayName();
user =English();
user.sayName();



}

abstract class IUser{

final String name;

  IUser(this.name);

void sayName();

}

class Turk implements IUser{
  @override

  String get name => 'Ali';

  @override
  void sayName() {
     print('Merhaba kapıdan hoş geldiniz $name');
  }
}

class English implements IUser{
  @override
  // TODO: implement name
  String get name => 'Adam';

  @override
  void sayName() {
     print('Welcome to ypur home $name ');
  }
}