
class countAlph{
  void alpAmount(String word, String alp){
    int counter =0;
    for(var i=0; i<word.length; i++){
      if(word[i] == alp){
        counter +=1;
      }
    }
    print(counter);
  }
}

void main(){
  var obj = countAlph();
  obj.alpAmount("Dilara", "a");
}