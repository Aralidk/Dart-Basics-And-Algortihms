import "dart:io";


int calculate(short, long){
 int square = (short + long) *2;
  print(square);
  return square;

}

void main(){
  print("Değerleri giriniz.");
    dynamic  short = int.parse(stdin.readLineSync() ?? "0");
  dynamic long = int.parse(stdin.readLineSync() ?? "0");
calculate(short,long);
}