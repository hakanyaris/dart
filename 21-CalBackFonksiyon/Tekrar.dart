void main() {
  FonksiyonBir(fonsiyonIki);
  int a = fonksiyonUc(functionDort);
  print(a);
}

void FonksiyonBir(callback) {
  print('birinci');
  callback();
}

void fonsiyonIki() {
  print('ikinci');
}

// fonksiyonDort u FonlsiyoUC e parametre olarak ayarladık.
int fonksiyonUc(int Function(int a) callback) {
  int b = callback(5);
  return b;
}

int functionDort(int a) {
  return a;
}
