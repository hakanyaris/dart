void main(List<String> args) {
  String? userName;

//1-aşağıda name null olduğu için hata verecektir ve null hatası fırlatıp ekrana yazdıracaktır.
  try {
    if(userName!.length>2){print('uzunluk');}
  } catch (e) {
    print(e);
  }


//3-
  String userName2='a';

if(userName2.length>2){print('uzunluk');}
else{throw UserNameException();}


}


//2- UserName null olduğunda 'Null check operator used on a null value' hatası fırlatıyor.bunu da kullanıcı anlamıyor.
//bu hatayı anlamlandırmak için exception(istisna) sınıfın kendi sınıfımıza miras aldık ve tostring metotunu override 
//ederek kendi hata metotumuzu yazıyoruz.

class UserNameException implements Exception{

  @override
  String toString() {
    return 'user Name2 i null girmişsin bunu düzlet.';
  }
}