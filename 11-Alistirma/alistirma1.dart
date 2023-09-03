
//girilen sayıdan 0 a kadar olan sayıların toplamı.
void main(){
print(sumNumbers(5));

}

int sumNumbers(int number){
    int sum=0;
 for(number;number>0;number--){
  sum +=number;

 }
   return sum;
}