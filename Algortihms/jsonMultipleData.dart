class succes{
  int control;
  List<oneArray> kisilerListesi;
  succes(this.control,this.kisilerListesi);

  factory succes.fromJson(Map<String, dynamic> json){
    var jsonArray = json["kisiler"] as List;
    List<oneArray> kisilerListesi = jsonArray.map((jsonArrayNesnesi) => oneArray.fromJson(jsonArrayNesnesi)).toList();

    return succes(json["succes"] as int, kisilerListesi);
    
  }
}


class oneArray{
  int kisi_id;
  String kisi_ad;
  int kisi_tel;
  oneArray(this.kisi_ad,this.kisi_id,this.kisi_tel);
  factory oneArray.fromJson(Map<String, dynamic> json){
    return oneArray(json["kisi_ad"] as String, json["kisi_id"] as int, json["kisi_tel"] as int);
  }
}


void succesParse(){
  String veri = '{"succes":1,"kisiler":[{"kisi_id":"1","kisi_ad": "dilara","kisi_tel":"5464646"},''{"kisi_id":"2","kisi_ad":"ender","kisi_tel":"dasdad"}]}';

  var jsonVeri = json.decode(veri);
  var answer = succes.fromJson(jsonVeri);
  print(answer.control);
  List<oneArray> kisilerListesi = answer.kisilerListesi; 

  for(var k in kisilerListesi){
    print(k.kisi_id);
    print(k.kisi_ad);
  }

  
}