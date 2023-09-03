// ignore_for_file: public_member_api_docs, sort_constructors_first
 void main() {

  final araba1=Araba.hiz();
  print(araba1.marka);

  final kullanici=Kullanici('ali');
  final araba2=Araba.form(kullanici);
  print(araba2.marka);
}

class Araba {

late String marka;
late int fiyat;
  Araba(this.marka,);
  Araba.hiz([this.marka='ford']);//burda isimledirimiş kurucu metot kullandık.Bir sınıfta birden fazla isinlendirilmiş 
  //kurucu metor kullanabiliriz.

  //factory kurcu metot ise geriye değer döndren kurucu metottur.
  factory Araba.form(Kullanici kullanici){//burada kullanıcı sınıfın name sini araba sınıfının markasına eşitleyeceğiz.                                   
   return Araba(kullanici.name);
  }

  
}

class Kullanici{
final String name;
late int yas;

  Kullanici(this.name);

}
