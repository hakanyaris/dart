import 'ayakkabı.dart';

class SporAyakkabi extends IAyakkabi{

  late String? sporDali;
  late int? _ununKodu;

  int? get urunKodu{
    return _ununKodu;
  }
  
  set(int urunKodu){
    return _ununKodu=urunKodu==null ? 0:urunKodu;
  }
  SporAyakkabi(super.numara, super.renk,{this.sporDali});
  



}