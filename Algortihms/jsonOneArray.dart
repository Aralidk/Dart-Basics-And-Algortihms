class oneArray{
  int kisi_id;
  String kisi_ad;
  int kisi_tel;
  oneArray(this.kisi_ad,this.kisi_id,this.kisi_tel);

  factory oneArray.fromJson(Map<String, dynamic> json){
    return oneArray(json["kisi_ad"] as String, json["kisi_id"] as int, json["kisi_tel"] as int);
  }
}

void kisiParse(){
  String strVeri = '{"mesajlar":[ {"mesaj_kod" : 1,"mesaj_icerik":"basarılı"}',
    '{"mesaj_kod" : 1,"mesaj_icerik":"basarılı"}']};
  var jsonVeri = json.decode(strVeri);
  var jsonArray = jsonVeri["kisiler"] as List;

  List<oneArray> kisilerListesi = jsonArray.map((jsonArrayNesnesi) => oneArray.fromJson(jsonArrayNesnesi)).toList();

  for(var k in kisilerListesi){
    print(k.kisi_id);
    print(k.kisi_ad);
    print(k.kisi_tel);
  }

  
}