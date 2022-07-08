import "dart:io";

double celToFah() {
  int? getValue = int.parse(stdin.readLineSync() ?? '0');
  double fah = (getValue * 1.8) + 32;

  return fah;
}

void main() {
  print("Deger Girin");
  print(celToFah());
}