class messages{
  int mesaj_kod;
  String mesaj_icerik;
  
  messages(this.mesaj_kod,this.mesaj_icerik);

  factory messages.fromJson(Map<String, dynamic> json){
    return messages(json["mesaj_kod"] as int, json["mesaj_icerik"] as String);
  }
}

void mesajParse(){
  String strVeri = '{"mesajlar": {"mesaj_kod" : 1,"mesaj_icerik":"basarılı"}}';

  var jsonVeri = json.decode(strVeri);

  var jsonNesne = jsonVeri["mesajlar"];

  var mes = messages.fromJson(jsonNesne);
  
}