//farktoriyel hesaplama
void main(){

print(factorialFind(4));


}
int factorialFind(int number){
  int carpim=1;
for(number;number>0;number--){

carpim *=number;
}
return  carpim;

}