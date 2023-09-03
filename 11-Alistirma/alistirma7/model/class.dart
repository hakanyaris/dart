class Kullanici{
late int _id;
late final String _adi;
late final String? _soyadi;
late double parasi;
late String? adres;

  Kullanici(this._id, this._adi, this._soyadi, this.adres,{this.parasi=0} );

bool dogrumu(String adi){
return _adi==adi;
} 

int get id=>_id;

set id(int? id){
  _id = id==null ? 0:id;// id null ise _id=0 ata değilse _id=id olsun
}
bool idYuzMu(int id){
  return  id==100;
}

}