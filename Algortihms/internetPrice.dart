class limit{
  int calcLimit(int used){
    int totalExceedPrice =0 ;
    if(used>50){
      int exceed = used-50;
      totalExceedPrice = exceed * 4;
    }
    int price = totalExceedPrice + 100;
    return price;
  }
}

void main(){
var obj = limit();
var prc =  obj.calcLimit(60);
print(prc);
}