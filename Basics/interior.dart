class interiorAngle{

  int calculateAngle(edge){
    int result = (edge-2)*180;
    return result;
  }
  
}


void main(){
var obj = interiorAngle();
int res = obj.calculateAngle(9);
print(res);
}