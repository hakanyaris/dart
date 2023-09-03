import 'model/class.dart';

void main(){

Kullanici kullanici=Kullanici(55,'Hakan', 'yaris', 'topçular mahallesi belde sokak çağdaşeknt apt.',parasi: 45);
print(kullanici.adres);
print(kullanici.parasi);

print(kullanici.dogrumu('Hakan'));
print(kullanici.id);
kullanici.id=null;
print(kullanici.id);
print(kullanici.idYuzMu(kullanici.id));
}