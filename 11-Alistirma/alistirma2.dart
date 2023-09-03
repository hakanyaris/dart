//girilen sayıdan 0 a kadar olan sayılardan çift olanların toplamı
void main(){
print(sumEvenNumber(5));

}
int sumEvenNumber(int number){
int sum=0;
 for(number;number>0;number--){
if(number%2==0){
  sum +=number;
}
 }

return sum;

}