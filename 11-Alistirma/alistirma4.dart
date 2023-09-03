//Dikdörgenin alanını hesaplayan bir fonksiyon birkenar sıfır girilirse veya null olursa 1 değerini ata
void main(){
print(rectangleArea(0, 3));

}
double rectangleArea(double? longEdge ,double? shortEdge){
if(longEdge==0){longEdge=null;}
if(shortEdge==0){shortEdge=null;}
return  (longEdge ?? 1) *( shortEdge ?? 1);// eğer bu değerler null ?? gelirse 1  varsayılan değer olarak ata
}