void main() {}

abstract class IStudent {
  final String name;
  final int age;
  int? scoodId;

  IStudent(this.name, this.age);
  void saySomething() {
    print('age');
  }
}

// implements amacı türelitlen classlar ana clastaki bütün properties ve metotları edinmek zorundadır.
class Student implements IStudent {
  final String name;
  final int age;
  int? scoodId;
  Student(this.name, this.age);
// implement ettiğimiz metotun içini farklı olarak tanımayabiliriz.
  void saySomething() {
    print('hakan');
  }
}

class Student2 implements IStudent {
  final String name;
  final int age;
  int? scoodId;
  Student2(this.name, this.age);
// implement ettiğimiz metotun içini farklı olarak tanımayabiliriz.
  void saySomething() {
    print('ali');
  }
}

//İmplement nedir
//ana  sınıfın tüm özelliklerini, değişkenlerini ve işlevlerini devralmadan kendi Araba
// sınıfınızı oluşturmak istediğinizi, ancak yalnızca Araç türünü miras almak istediğinizi 
//varsayalım. Bunu yapmak için Car sınıfının Araç arayüzünü uygulaması gerekir.