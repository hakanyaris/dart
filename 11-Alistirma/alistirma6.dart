
//üçgenin ikizkenar mı , eşkenar mı çeşitkenar mı olduğunu söylesin geriye değer döndürmesin
void main (){
  typeTriangle(3, 5, 2);
}

void typeTriangle(int a,int b ,int c){
if(a==b && a==c ){print('girilen üçgen eşkenar');}
else if(a==b || a==c || b==c){print('girilen üçgen ikizkenar');}
else {print('girilen üçgen çeşitkenar');}

}
