class fact{

  int facto(int numberGiven){
    int i;
    int result =1;
    
    for(i=1; i<numberGiven+1; i++){
      result = result * i;
    }
    return result;
  }
}

void main(){
  var obj = fact();
  int res = obj.facto(8);
  print(res);

}