void main() {
  int a = 2;
  int b = a;
  print(b);
  a = 3;
  print(a);
  print(b);
  print(topla2((a, b) => a + b, 4, 6));
}

int topla(int a, int b) {
  return a + b;
}

int topla2(int test(int a, int b), int c, int d) {
  return test(c, d);
}
