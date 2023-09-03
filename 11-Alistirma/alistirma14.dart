void main(List<String> args) {
stream().listen((event) {print(event);});

}

Stream <int> stream() async*{
  int a=1;
while(a<10){
 
 await Future.delayed(Duration(seconds: 1));
 yield a;
 a++;
}

} 