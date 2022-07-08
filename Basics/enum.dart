enum sizeType{small,middle,large}

void price(sizeType size){
  switch(size){
    case sizeType.small:{
      print(20*30);
    }break;
       case sizeType.middle:{
       print(30*30);
    } break;
       case sizeType.large:{
       print(40*30);
    }
  }
}

void main(){
price(sizeType.middle);
}