void main(List<String> args) {
  var user1 =
      User(data: 'Ali'); // 2- ALİ verdiğimiz için T  generiği  String olur
  print(user1.data);
  var user2 = User(data: 1); //    değere 1 verdiğimiz için int  olur
  print(user2);

//4-              //user1 yazamayız çünkü burada user1 IAdminden türetilmiyor.
  //removeUserAll(user1);
  final admin1 = AdminUser();
  removeUserAll(
      admin1); //admin1 yazabildik ve kızmadı çünkü admin1 IAdminden türetilmiştir.
}

//GENERİC YANİ TİP BELİRLEYEREK bu  TİPİ CLASIN veya metotun İÇİNDE DE KULLANABİLRİZ.
//1-
class User<T> {
  T data;
  User({
    required this.data,
  });
}

//3-
abstract class IAdmin {
  void removeUser();
}

class AdminUser extends IAdmin {
  @override
  void removeUser() {
    // TODO: implement removeUser
  }
}

//generic ile clasları ve metotları aşağıdaki şekilde engeller koyarak birbirinden türetüp birbirinden engelletebiliriz.

//4-                T generic tip IAdminde türeyenler olabilir. bu şekilde IAdminin metotlarını fonksionun içinde kullanabilirim.
void removeUserAll<T extends IAdmin>(T data) {
  data.removeUser(); //bu  fınksiyon IAdmin in içinden aldık kullandık.
}
