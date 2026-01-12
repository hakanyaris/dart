//Singletion yani bir sınıftan sadece bir adet nesne yaratılmasını garanti etmek ve o sınıfın nesneye ait operasyonları
// kontrol etmek için temel bir nokta olmasına dayanır. Oluşturulan o nesne de sınıfın kendi içinde oluşturulur.
//https://www.youtube.com/watch?v=HoskF3XXXDs&t=1s izle
//Site yer işaretlerinde yazılım dosyasını içinde desingpattern içindekileri incele
//NOT ÖNEMLİ:SİNGLETİON YANİ SINIFIN ÖRNEĞİNİ KENDİ İÇİNDE OLUŞTURMA VE DIŞARIDA ÖRNEK OLUŞTURMAYA YAPAMA
class ProductSingletion {
  static final ProductSingletion productSingletion =
      ProductSingletion._('A'); //consakcır yapısını tanımlıyoruz.
  final String apikey;

  ProductSingletion._(
      this.apikey); // dışarıdan erişilmeyen consacır  yapısı oluşturduk.
}
//böylece Singleton sınıfa dair işlemlere herhangi bir başka sınıf tarafından erişilebilir ancak yeni bir nesne
// yaratılmasının da aynı zamanda önüne geçilmiş olur.

//singletin ikinici oluşturma şekli lazysingletion
class ProductLazySingletion {
  static ProductLazySingletion? _instance;
  static ProductLazySingletion get instance {
    if (_instance == null) _instance = ProductLazySingletion._init();
    return _instance!;
  }

  ProductLazySingletion._init();
}
