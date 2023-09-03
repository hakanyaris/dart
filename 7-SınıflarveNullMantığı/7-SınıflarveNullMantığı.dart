


void main() {
// dart dili hiçbir nesneyi başıboş tanımlamasını istemez.yani nesneler ya değer atayacağız ya fa
  // ? koyup null dönebilir diyeceğiz
  int a;
// print(a); a değişkenini bu şekilde yazamayız .

  int c = 0; //ya  bu şekilde değer atamalıyız.
  int? b;
  ; // ya da nesneye değer vermeyeceksek  ya bu şekilde  atamalıyız
//print(b + 10);  //b ile 10 toplanırsa hata verir çünkü null bir değer ile sayı toplanamaz
// print(b! +10); // çözümü 1 -burada ! işareti ile ben buna değer atayacağıma söz veriyorum diyorum.ama atama yapmazsam yine program hata verir.
//ama tercih edilen bir yöntem değil.çözüm 2- aşağıdaki gibi kullanmak daha mantıklı.
  if (b != null) {
    print(b + 10);
  } else {
    print(10 + 10);
  } //default değer

  print('---------------------------------------');

  List<int?> costamerMoneys = [
    100,
    null,
    0
  ]; // listedeki bir eleman null deperi alabiliyorsa ? koymalıyız.

  for (var item in costamerMoneys) {
    if (item != null) {
      if (item > 0) {
        print('sıfırdan büyük');
      } else {
        print('sıfıra eşit');
      }
    } else {
      print('bu değer null');
    }

    bool resault = controlMoneys(item) == null
        ? false
        : true; //item  null ise false(result) olur aksi true olur.bunu if ilede yazabilirdik.
    print(resault);
  }

  print('---------------------------------------');
  User user1 = User(id: '1', 'vb', 15, age: 21, city: 'aaa');
  User user2 = User(id: '2', 'vb2', 15, age: null, city: null);
  final user3 = User(id: '3', 'vb3', 13, age: 70);
  print(user3.userCode);
  // id değeri 1 olan müşteriye 5 tl ekle (89 satırdaki final kaldırdık çünkü moneye yeni değer atayacağız.  105 satırdaki kodu yazdık.)
  if (user1.isSpacielUser('1')) {
    user1.money += 5;
  }
  print('müşterinin parası : ${user1.money}  tl oldu');

  //son gelen müsterinin şehir bilgisine göre kampanya yapacak eğer istanbul ise

  //if(user3.city!.isEmpty){} (burada  city den sonra ! işareti koymazsak  hata verir.) bu kodu çıplak yazarsak city null gelirse uygulama patlar hata verir.
  // bu yüzden city null olmadığını kontrol edip yazmalıyız.

  if (user3.city == null) {
    print('müşteri şehir bilgisini vermemiş');
  } else {
    if (user3.city == 'istanbul') {
      print('kampanyadan yararlanabilirsiniz.');
    } else {
      print('kampanyadan yararlanamazsınız');
    }
  }

//başka bir kullanım örneği
  User3 user4 = User3()
    ..age = 10
    ..city = 'istanbul'
    ..money = 300
    ..name = 'hakan';

  User4 user5 = User4(name: 'name', money: 42, age: 18, city: 'city');
  //user5.  dediğimde hiçbir prooerti görünmez çünkü User5 clasında hepsi private
} //main bitiş

//---------------------------------------------------------------------------------

//yeni bir metot olsun  null olanları(hesabı olmayan) veya 0 değeri olanları  null sayalım.
int? controlMoneys(
    int?
        money) // geriye null döndürebilceğimiz için ? ve money null gelebileceği için null yazarız.
{
  if (money == null || money == 0) {
    return null;
  } else {
    return money;
  }
  //not;null döndürebilen bir metot da return yazmazsak geriye otomatik null döndürür.
}

//
//
//---------------------------------------------------------------------------------

// aşağıdaki sınıfta adı ve parası olmak zorunda ama yaşı ve city verilmeyebilir.
//city değeri gelmezse null olursa default olarak istanbul ata .

class User {
  //final sonradan değer atanmama durumudur . class(obje)oluşturma sürecinde  bir propertiese(özelliğe) final
  // eklersen bunu sadece  yapısı metot(consakcır)da kullanabiliriz.Sadece late eklersek istediğimiz zaman her
  //yerde kullanabiliriz.
  //final yazdığımız propertiesler sınıf main de newlenirken  bir değer atarız daha sonra bu değeri
  // değiştiremeyiz anlamındadır.Yani name  özellğine sınıf newlenirken Ahmet dersek daha sonra onu ali ile
  // değiştiremeyiz.
  late final String
      name; //late yani değer atamadığımız bu değişken sonradan dolacak.null hatası vermemesi için yapılır.
  late int money;
  late final int? age;
  late final String?
      city; //age ve city null olabileceği için ?koyduk  ve city ve age doldrulmasa  da olur

  late final String userCode;
  final String id;
  //Not;  {} içine yazılan propertiesler 1- eğer tanımlanırken(yukarıda) late almışsa yapıcı
  //metot içinde required almak zorundadır.2- eğer late almayıp  ? null alabilir yaparsak(yukarıda)
  //requiren yazmamıza gerek yok.   Yani {} içine çıplak bir şekilde this.id diye tanımlayamayız.

  //reqired yani id girilmek zorunda // bu nedenle id propertiesine ? özelliği eklemek zorunda değiliz.
  User(String name, int money, {required this.id, int? age, String? city}) {
    // consakcır tanımladık
    this.name = name;
    this.age = age;
    this.money = money;
    this.city = city;
    //city ?? 'istanbul' yani city null olursa istanbul değerin ata.
    userCode = (city ?? 'istanbul') +
        name; // burada  userCode=city+name  kodunu yazsaydık hata verecekti. city! şeklinde yazsaydık hata vermezdi ama null gelirse hata fırlatacaktı.
  }

  bool isSpacielUser(String id2) {
    return id == id2;
  }

  // verilen id değeri boş mu dolu mu kontrol eden metot 2 şekilde yazık. 1.şekilde aşağıdaki gibi .2 şekilde  ise arrow function şeklinde yazılır.
  // bool isEmptyId()
  //{
  //  return id.isEmpty;
  //}

  bool get isEmptyId => id.isEmpty;
}

//------------------------------------------------------

//burada yapıcı metotu konsakcırı daha pratik tanımlayacağız.
//id değişkenine sadece bu sınıf içinden erişebilisin  private yapma  (değişken isminin başına _ koyulur)Eğer
//kullanılan main yapısı ile class yapısı aynı dosyanın içindeyse veriler gizlenememektedir. Dart dilinde private
//değişkenler oluşturmak için ilgili class yapısını farklı bir dosyada kaydetmemiz gerekir.
class User2 {
  late final String name;
  late final int money;
  late final int? age;
  late final String? city;

  late final String userCode;
  late final String
      _id2; //private yaptık yani sınıf dışından erişilemez.fakat şu anda cllasımın ile main aynı ,
  // olduğu için erişilebilir.
  // yapıcı metotda  this.name yazdığımızda direk cllasın namesine eşitler pratikleştirir
  User2(this.name, this.money, {this.age, this.city, required String id}) {
    _id2 = id;
    userCode = (city ?? 'istanbul') + name;
  }
}

//-------------------------------------------------------

class User3 {
  String? name;
  int? money;
  int? age;
  String? city;
}

//başka bir kulanım örneği --en çok tescih edilen kullanım bu demiş hocamız
class User4 {
  final String _name;
  final int _money;
  final int _age;
  final String _city;
  int get age => _age; // dışarıdan kullanımıa bu şekilde açabiliriz.
  User4(
      {required String name,
      required int money,
      required int age,
      required String city})
      : _name = name,
        _money = money,
        _age = age,
        _city = city;
}

//servis kullanımı (veirleri internetten çekiyorsak) en ideal kullanım

class User5 {
  final String? name;
  final int? money;
  final int? age;
  final String? city;

  User5({this.name, this.money, this.age, this.city});
}
