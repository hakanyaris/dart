//https://medium.com/@naveenjose24/dart-const-vs-final-understanding-the-differences-and-when-to-use-each-65263ebf5d89

//  `const` veya `final` Ne Zaman Kullanılır:
// Derleme zamanında bilinen ve program yürütme sırasında asla değişmemesi gereken değerlere sahip olduğunuzda
// `const` kullanın . Bu, matematiksel sabitler veya yapılandırma değerleri gibi sabitler için uygundur.

// Çalışma zamanında bir değişkeni başlatmanız gerektiğinde `final` kullanın , ancak bir değer atandığında sabit
// kalması gerekir. Bu, çalışma zamanında değişebilen ancak daha sonra değişmemesi gereken değerler için uygundur,
// örneğin zaman damgaları veya kullanıcı tanımlı ayarlar.

// Yapıcı parametrelerine bağlı değerleriniz varsa, örnek değişkenler için `final` kullanın,
// `const` derleme zamanı sabitleri için ayrılmıştır.

//Bu ayrımları anlamak, Dart kodunuzun özel gereksinimlerine göre uygun anahtar kelimeyi (`const` veya `final`)
// seçmek için çok önemlidir. Kodunuzun öngörülebilir, sürdürülebilir ve verimli kalmasını sağlar.


//------------------------------------------------
//-----------------------------------------------
/*`const` Ne Zaman Kullanılır
`const` anahtar sözcüğü, derleme zamanı sabit değerlerinin yalnızca önerilmediği, aynı zamanda oldukça avantajlı olduğu belirli senaryolar ve kullanım durumları için idealdir.

`const` kullanımının önerildiği bazı özel örnekler ve senaryolar şunlardır:

1. Matematiksel Sabitler:

π (pi) veya ışık hızı © gibi matematiksel sabitler asla değişmeyen bilinen değerlerdir. Bu tür sabitler için `const` kullanmak, bunların derleme zamanında sabit ve bilinen kalmasını sağlar.

sabit  çift pi = 3.14159265359 ;
2. Yapılandırma Değerleri:

Uygulamanızdaki URL'ler, API anahtarları veya ortama özgü değerler gibi yapılandırma ayarları genellikle derleme zamanı sabitleri olarak en iyi şekilde temsil edilir. Bu uygulama kodunuzu daha güvenli hale getirir ve yapılandırma değerlerinin bilinip tutarlı olmasını sağlar.

sabit  Dize apiBaseUrl = 'https://api.example.com' ;
3. Numaralandırmalar:

Enum değerleri sabit bir seçim kümesini temsil eder ve bu da onları `const` için uygun hale getirir. Örneğin, rol tabanlı bir erişim kontrol sistemini düşünün:

sınıf  KullanıcıRolü  {
  statik  sabit yönetici = 'yönetici' ;
  statik  sabit kullanıcı = 'kullanıcı' ;
  statik  sabit konuk = 'misafir' ;
}
4. Renkler:

Uygulamanızın temasındaki renkler, birincil, ikincil veya arka plan renkleri gibi, sabittir ve `const` kullanılarak bildirilebilir. Bu uygulama, kod okunabilirliğini artırır ve uygulamanızın tasarımını yönetmeyi kolaylaştırır.

sabit Renk birincilRenk = Renkler.mavi;
5. Sık Sık Karşılaşılan Sabitler:

Derleme zamanında bilinen ve değişmeyen sık kullanılan değerler için `const` kullanımı performans avantajları sağlar. Örneğin, kodunuzda aynı sabit değeri birden fazla kez kullandığınızda `const` anahtar sözcüğü Dart derleyicisinin kodu optimize etmesini sağlar ve bu da performansın artmasıyla sonuçlanır.

sabit int sayfa  başına öğe = 10 ;
6. Flutter'daki Widget'lar:

Flutter'da, uygulamanızın çalışma zamanı boyunca sabit kalan widget'lar için `const` kullanabilirsiniz. Örneğin, birden fazla yerde kullanılan bir yükleme göstergeniz varsa, yalnızca bir kez oluşturulmasını ve verimli bir şekilde yeniden kullanılmasını sağlamak için bunu bir `const` widget'ı yapabilirsiniz.

sabit DaireselİlerlemeGöstergesi yüklemeGöstergesi = DaireselİlerlemeGöstergesi();
Bu senaryolarda `const` kullanarak, yalnızca kod okunabilirliğini iyileştirmekle kalmaz, aynı zamanda performans iyileştirmelerine yol açabilen derleme zamanı değerlendirmesinden de yararlanırsınız. Sabitler derleme zamanında bilinir ve uygulamanız boyunca güvenle yeniden kullanılabilir, bu da daha temiz, daha verimli ve öngörülebilir Dart koduyla sonuçlanır.

`final` Ne Zaman Kullanılır
`const` derleme zamanında bilinen değerler için uygunken, `final` esneklik ve çalışma zamanı atama yetenekleri sunar. İşte `final`'in daha uygun bir seçim olduğu durumlar:

1. Geç Başlatma:

Çalışma zamanında bir değişkene değer atamanız ancak sonrasında sabit kalmasını sağlamanız gereken durumlarda, `final` doğru seçimdir. Örneğin, bir olay gerçekleştiğinde geçerli tarih ve saati yakalamak:

son  DateTime eventTime = DateTime .şimdi();
2. Kullanıcı Girişi:

Kullanıcı girdisini yakalamanız ve bunu uygulamanın çalışma zamanı boyunca sabit olarak kullanmanız gerektiğinde, `final` uygundur. Örneğin, bir kullanıcının adını kabul etmek ve oturumu boyunca sabit kalmasını sağlamak:

final  String userName = getUserInput(); // getUserInput varsayımsal bir fonksiyondur
3. Hesaplanan Değerler:

Çalışma zamanı koşullarına göre değerleri hesaplamanız ve hesaplamadan sonra değişmediğinden emin olmanız gereken durumlarda, `final` tercih edilen seçenektir. Örneğin, bir alışveriş sepetindeki öğelerin toplam maliyetini hesaplamak:

son  double toplam maliyeti hesapla( Liste < double > öğe fiyatları) { 
 double toplam = 0 ; 
 için ( var fiyat içinde öğe fiyatları) { 
toplam += fiyat; 
} toplamı 
 döndür
 ; } 
son  double sepetToplamı = toplam maliyeti hesapla(öğe fiyatları);
4. Karmaşık Başlatma ile Yapılandırma Değerleri:

Belirlenmesi karmaşık mantığa dayanan yapılandırma değerleriniz (örneğin koşullu kontroller veya harici kaynaklardan gelen veriler) olduğunda, `final` kullanmak bunları çalışma zamanında hesaplamanıza ve bundan sonra değişmemelerini sağlamanıza olanak tanır.

son  Dize apiUrl = isProductionEnvironment ? productionApiUrl : stagingApiUrl;
5. Sınıf Örnek Değişkenleri:

Sınıflarda, bir oluşturucuda atandıktan sonra değişmezliklerini garantilemek istediğinizde örnek değişkenler için `final` kullanabilirsiniz. Örneğin, final koordinatları olan bir `Point` sınıfı tanımlamak:

sınıf  Nokta  {
  son  çift x;
  son  çift y;
Nokta( bu .x, bu .y);
}
Bu senaryolarda `final` kullanarak, çalışma zamanında değerleri hesaplama ve atama esnekliğini korurken, bu değerlerin programın yürütülmesi süresince sabit kalmasını garanti edersiniz. Esneklik ve değişmezlik arasındaki bu denge, `final`i bu gibi durumlarda uygun bir seçim yapan şeydir.

En İyi Uygulamalar
Dart kodunuzda `const` ve `final`'i etkili bir şekilde kullanmak, okunabilirliği, sürdürülebilirliği ve optimum performansı garantilemek için önemlidir. İşte dikkate alınması gereken bazı en iyi uygulamalar:

1. Doğru Anahtar Kelimeyi Seçin:

- Derleme Zamanı Sabitleri için `const` kullanın: Eğer bir değer derleme zamanında biliniyorsa ve program yürütülürken asla değişmemesi gerekiyorsa `const` kullanın.

- Çalışma Zamanı Sabitleri için `final` kullanın: Çalışma zamanında bir değer belirlendiğinde ancak atamadan sonra sabit kalması gerektiğinde `final` seçeneğini tercih edin.

2. Okunabilirliği Koruyun:

- Açıklayıcı İsimler: Kod okunabilirliğini artırmak için açıklayıcı değişken isimleri kullanın. Net isimler, sabitin veya değişkenin amacının anlaşılmasını kolaylaştırır.

- Bağlam İçin Yorumlar: Özellikle hemen açık olmayabilecek durumlarda, `const` veya `final` değerinin önemini açıklamak için yorumlar ekleyin.

3. Geç Başlatma için `final` kullanın:

- Çalışma zamanında bir değer atamanız gerektiğinde ancak sonrasında sabit kalmasını sağlamak istediğinizde `final` seçeneğini seçin. Bu, değişmezliği tehlikeye atmadan esneklik sağlar.

4. Gereksiz `const`'tan kaçının:

- Çalışma zamanı sırasında değişebilen değerler için `const` kullanmaktan kaçının. `const`'un aşırı kullanımı aşırı bellek kullanımına yol açabilir ve performansı olumsuz etkileyebilir.

5. Performans Hususları:

- `const` değerlerinin derleme zamanında değerlendirildiğini ve bunun bazı durumlarda daha iyi performansa yol açabileceğini unutmayın. Ancak, mikro optimizasyonlar için esneklikten veya okunabilirlikten ödün vermeyin.

6. Tekrar kullanılabilirlik:

- Uygulamanızın farklı bölümlerinde yeniden kullanılabilecek sabitleri ve değerleri yönetmek için yardımcı işlevler veya sınıflar oluşturmayı düşünün. Bu, kodun yeniden kullanılabilirliğini artırır ve bakımı kolaylaştırır.

7. `final` ile Değiştirilebilir Koleksiyonlardan Kaçının:

- `final` yeni bir koleksiyonun bir değişkene atanmasını engellerken, koleksiyonun kendisini değiştirilemez yapmaz. `final`i değiştirilebilir koleksiyonlarla kullanırken dikkatli olun çünkü koleksiyonun içerikleri hala değiştirilebilir.

8. Hata Yönetimi:

- `final` kullanırken hata işleme konusunda dikkatli olun. `final` değişkenine atanması gereken bir değer hatalar nedeniyle belirlenemiyorsa, bu istisnaları kodunuzda zarif bir şekilde işleyin.

Bu en iyi uygulamaları takip ederek, Dart'ta `const` ve `final`'in gücünden yararlanarak temiz, verimli ve sürdürülebilir kod yazabilirsiniz. Uygun anahtar kelimeyi seçmek için değerlerinizin bağlamını ve gereksinimlerini dikkatlice değerlendirin ve değişmezlik ve çalışma zamanı esnekliğine yönelik dengeli bir yaklaşımın Dart programlama çabalarınızda size iyi hizmet edeceğini unutmayın.

Çözüm
Bu makalede, Dart programlamada `const` ve `final`'in temel kavramlarını inceledik. Bu iki anahtar kelime arasındaki farkları, kullanım durumlarını ve bunları kodunuzda etkili bir şekilde nasıl uygulayacağınızı açıkladık.*/