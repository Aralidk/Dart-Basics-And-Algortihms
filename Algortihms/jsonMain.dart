class kategoriler{
  String kategori_id;
  String kategori_ismi;
 kategoriler(this.kategori_id,this.kategori_ismi);

  factory kategoriler.fromJson(Map<String, dynamic> json){
    return kategoriler(json["kategori_id"] as String, json["kategori_ismi"] as String);
  }
}


class yonetmenler{
  String yonetmen_id;
  String yonetmen_isim;
  yonetmenler(this.yonetmen_id,this.yonetmen_isim);

  factory yonetmenler.fromJson(Map<String, dynamic> json){
    return yonetmenler(json["yonetmen_id"] as String, json["yonetmen_isim"] as String);
  }
}

class filmler{
  String film_id;
  String film_ismi;
  String film_yil;
  String film_resim;
  kategoriler kategori;
  yonetmenler yonetmen;
  filmler(this.film_id,this.film_ismi,this.film_resim,this.film_yil,this.kategori,this.yonetmen);

  factory filmler.fromJson(Map<String, dynamic> json){
    return filmler(json["film_id"] as String,json["film_isim"] as String,json["film_yil"] as String,json["film_resim"] as String, kategoriler.fromJson(json["kategori"]), yonetmenler.fromJson(json["yonetmen"]));
    
  }
}

class answer{
  int succes;
  List<filmler> film;
  
  answer(this.succes, this.film);

  factory answer.fromJson(Map<String, dynamic> json){
    var jsonArray = json["filmler"] as List;
    List<filmler> film = jsonArray.map((jsonArrayNesnesi) => filmler.fromJson(jsonArrayNesnesi)).toList();
    
    return answer(json["succes"] as int, film );
  }
}

void cevapParse(){
  String veri = "";

  var jsonVeri = json.decode(veri);
  var filmlerAnswer = answer.fromJson(jsonVeri);
  int succes = filmlerAnswer.succes;

  List<filmler> filmlerListe = filmlerAnswer.film;

  for(var f in filmlerListe){
    print(f.film_id);
    print(f.kategori.kategori_id);
  }
}