void main() {
  final newProduct = Product.money;

  Product.implementMoney(5);
  print(Product.money);
  colculateMony();
}

void colculateMony() {
  if (Product.money > 5) {
    // burada money satatik özelliğine dışardan Product.money şeklice newlemeden ulaştık.
    print('5 tl daha ekledik');
    Product.money += 5;
    print(Product.money);
  }
}

class Product {
//1- static bir metota dışardan erişebilmek için classı newlemek gerekmez istediğimiz anda ulaşabiliriz.
  static int money = 10;
  //bu static öğelere sadece buradan değil diğer sınıflardan  ve  klasörlerin altından ulaşabilirim. bu yüzden
  // müdaheleye açıktır. ve static kullanmak çok güvenli değildir.Herkes money e erişebilir ve değiştirebilir.
  //müdahaleleri (null olarak değiştirilebilir) önlemek için sabir değer atayabilriiz const ile;
  static const String name = 'Ali'; //bu şekilde null yapılamaz ve değişirilemez

  static void implementMoney(int newMoney) {
    money += newMoney;
  }
}
