 class variableMethods{
   //static methodlar dışarıdan sınıf ismi kullanılarak, obje oluşturmadan erişim sağlarlar.
   static int any =10;

   static void method(){
     print("peanut");
   }
 }


void main(){
 int newValue = variableMethods.any = 15;
 print(newValue);
 variableMethods.method();
}