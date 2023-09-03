// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {
  IDatabase database = SQL();
  database.write();
  database = Mango();
  database
      .write(); // IDatabase clasından türetilen SQL VE Mango basit bir şekilde  databeae eşitlenip
// birbirlerinin yerine kullanılabilriyor.update edilebilior.
//
}

//solid kavramı çok anlamı vardır:
//1-ise her clasın ve metotun kendi amacına hizmet etmesidir.Aşağıda  UserManager clasına kullanıcı
//yöneticisi işleri  dışında başka bir iş yazılmamalıdır.Örneğin changeUserManager  kullanıcı yöenticisi değiştirme
//işlem olabilir.

class UserManager {
  String name;
  UserManager({
    required this.name,
  });
  //changeUserManager  anlamı kullanıcı yöneticsini değiştir
  void changeUserManager(String name) {
    this.name = name;
  }

//changeLocalization yerelleştirmey değiştir. Bu clasa uygun bir kullanım değil .solid prensiplerine uymuyor.
  void changeLocalization() {
    print('localization');
  }
}

// Localization yani   Yerelleştirme, bir uygulamanın kaynaklarını uygulamanın destekleyecekleri her kültür için yerelleştirilmiş sürümlere çevirme işlemidir
//burda dil değişkliği Localization işleminin kapsamındadır.
class Localization {
  final UserManager manager;

  Localization(this.manager);
  // localization u UserManager clasında kullanmayıp burda kullandık.bunun için  o clasın örneğini buraya taşıdık.

  //updateNameAndLocalization anlamı isim ve yerelleştirmeyi güncelle
  void updateNameAndLocalization() {
    manager.changeUserManager('a');
    changeLocalization();
  }

  void changeLocalization() {}
}

//----------------------------------------------------------------------------------------------------------------
//solida kavramı anlamı 2-açık ve kapalılık
//çekirdek(core)claslar  kendi içinde değiştirilememeli  ama çekirdek classlardan türeyenlerle de büyüyebilmeli.

//Product  çekirdek(core) klas olsun
class Product {
  final String name;
  final int money;

  Product(this.name, this.money);
}

//Alt clastan özellk ekledik ve üst clasa hiç dokunmadan üst clasın özellklerini de aldık.
class ProductCategories extends Product {
  ProductCategories(super.name, super.money);
  final String category = '1';
}

//------------------------------------------------------------------------------------------------------------------------
//solida kavramı anlamı 3-Alt dallardan üst dallara eşitlenebilir olmalı
//main de  3. satırdan itibaren anlatımın devamı var
abstract class IDatabase {
  void write();
}

class SQL extends IDatabase {
  @override
  void write() {
    // TODO: implement write
  }
}

class Mango extends IDatabase {
  @override
  void write() {
    // TODO: implement write
  }
}

//solida kavramı anlamı 4- interfaceler (abstract classlar)   parçalanması
//6.16 video

abstract class IUserOperation implements IUserLocation, ILanguage {
  void write();
  void read();
  void delete();
  // bütün işlemleri bir abstract clasta tamınlamak yanlış.
  void
      locationchange(); // bu iki işlem için yeni bir abtract class tanımlamalıyız.ve onu da bu clasa with ile baülamalıyız.(13. derste with anlatıldı.)
  void language();
}

abstract class IUserLocation {
  void locationchange();
}

abstract class ILanguage {
  void language();
}

//abstract clasları parçalamanın avantajı bana sadece user location lazım olduğu zaman IUserLocation  abstract clasını
//referas alırım.bu da bana bazı avantajlar sağlar.

//https://gokhana.medium.com/interface-segregation-prensibi-nedir-kod-%C3%B6rne%C4%9Fiyle-soli%CC%87d-ac0fd6812ecf

class UserLocation extends IUserLocation {
  @override
  void locationchange() {
    // TODO: implement locationchange
  }
}

//solida kavramı anlamı 5-Sınıflar arası bağımlılıklar olabildiğince az olmalıdır özellikle üst seviye sınıflar alt
//seviye sınıflara bağımlı olmamalıdır.

//Bir sınıfın, metodun ya da özelliğin, onu kullanan diğer sınıflara karşı olan bağımlılığı en aza indirgenmelidir. Bir
//alt sınıfta yapılan değişiklikler üst sınıfları etkilememelidir.

// Peki, bütün bu sorunlardan kurtulmanın yolu nedir ?
// Cevap: Dependency Inversion, yani üst sınıflar, alt seviyeli sınıflara bağlı olmamalı, çözüm ise her ikisi de soyut
//kavramlar üzerinden yönetilebilmelidir. Yüksek seviye ve düşük seviye sınıflar arasında bir soyutlama katmanı oluşturabiliriz.

// Üst Seviye Sınıflar -> Soyutlama Katmanı -> Düşük Seviye Sınıfları
abstract class ICameraManager {
  void readQR();
// aşağıdaki kodu burada yaparsak bu üst clası alt clasa bağımlı kılarız ve yapmamalıyız bunu önlemek için ara bir abstract clas oluşturup
//bu işi oraya devretmeliyiz.
//final IphoneCameraRead iphoneCameraRead;
}

class DeviceCameraManager extends ICameraManager {
  final IphoneCameraRead iphoneCameraRead;

  DeviceCameraManager(this.iphoneCameraRead);

  @override
  void readQR() {
    //iphoneCameraRead.   bu özelliği prdojemde kullanabilirim.
  }
}

class IphoneCameraRead extends ICameraManager {
  @override
  void readQR() {
    // TODO: implement readQR
  }
}
