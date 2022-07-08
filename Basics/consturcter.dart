class lateWork{
  late int no;
  late String name;
  //lateWork(this.no,this.name);
}

void main(){
  var student = lateWork();
  //var student = lateWork(5,"dilara");
  student.no =100;
  student.name = "dilara";
}