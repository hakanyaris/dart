// streamlar tıpkı bir radyo yayını dimleme işlemi gibi ses geliyorsa ses veir gelmiyorsa hazırda bekler.
//  stream klasörünü dinler veri gelirse gerekeni yapar.
void main() {
  myStreamFuncion().listen((event) {
    print(event);
  });
}

//1-Stream sınıfını kendimiz oluştırıyoruz ilk olarak
Stream<int> myStreamFuncion() async* {
  for (int i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i +
        1; // bir fonksiyon burdaki gibi stream döndürüyorsa return değil yield yazılmalıdır.
  }
}
