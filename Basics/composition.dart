class location{
  late String province;
  late String town;
  location(this.province,this.town);
}

class person{
  late String name;
  location loc;
  late int age;
  person(this.name,this.loc,this.age);
}

void main(){
  var loc = location("adana","seyhan");
  var info = person("dilara",loc,22);
  print(info.name);
  print(info.age);
  print(info.loc.province);
  
}