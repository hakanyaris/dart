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

//implements amacı türelitlen classlar ana clastaki bütün properties(değişken) ve metotları edinmek zorundadır.
//alt sınıflar kurucu metotu(consakcır) eklemek zoruna değil.
//üst sınıf abstract veya normal sınıf olması birşey değişirmez.üst sınıftaki bütün değişken metotlar tanımlanmak zorundadır.
// alt sınıftan super metodu ile ust sınıfa erişilemez
class Student implements IStudent {
  final String name;
  final int age;
  int? scoodId;
  Student(this.name,
      this.age); //:super(name,age); ekleyemeyiz çünkü implemet işleminde üst sınıfın kurucu metoduna ulaşamayız.
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
//EXTENDS VE İMPLEMENTS ARASINDAN FARKLAR.
//--extends(uzanır)                                                      --implements(uygular)
// Başka bir sınıftan bir sınıfı miras almak için kullanılır.           	Bir sınıfı başka bir sınıfta arayüz olarak miras almak için kullanılır.
// Alt sınıfa tam yöntem tanımı verir.                                  	Alt sınıfa soyut yöntem tanımı verir.
// Yalnızca bir sınıf genişletilebilir.                                   Birden fazla sınıf uygulanabilir.
// Yöntemleri geçersiz kılmak isteğe bağlıdır.                          	Beton sınıfı bir arayüzün yöntemlerini geçersiz kılmalıdır.
// Üst sınıfın yapıcıları, alt sınıfın yapıcılarından önce çağrılır.	    Üst sınıfın yapıcıları alt sınıf yapıcısından önce çağrılmaz.
// Super anahtar sözcüğü, üst sınıfın üyelerine erişmek için kullanılır. 	Arayüz üyelerine super anahtar sözcüğü kullanılarak erişilemez.
// Alt sınıfın, üst sınıfın alanlarını geçersiz kılmasına gerek yoktur.	  Alt sınıf, arayüzün alanlarını geçersiz kılmalıdır.
