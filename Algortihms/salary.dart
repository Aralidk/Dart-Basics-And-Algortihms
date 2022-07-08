class salary{
  double calc(day,hour){
    int totalSalary =0;
    if((hour/day>8)|| day>20){
      int overday = day -20;
      double overdaySalary = (overday*20*8)/2;
      int overtime = hour-(day*8);
      int overSalary = overtime * 20;
      int normal= (hour-overtime)*10;
      double totalSalary = normal+overSalary+overdaySalary;
      return totalSalary;
    }
    else{
      double totalSalary= hour*10;
      return totalSalary;
    }
    
  }
}

void main(){
 var salaryObj = salary();
 double getting = salaryObj.calc(24,220);
 print(getting);
}