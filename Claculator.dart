import 'dart:math';

abstract class ICalculator {
  final int num1;
  final int num2;
  ICalculator(this.num1,this.num2);
  int? SumElements()=>(num1+num2);
  int SubElements()=>num1-num2;
  int MulElements()=>num1*num2;
  double DividElements ()=> num1/num2;
  void Calculate()=>{};
}

class SimpleCalculator extends ICalculator{
  SimpleCalculator(int num1, int num2) : super(num1, num2);
  
  void Calculate(){
    
  }
}

class ScientifiCalculator extends ICalculator{
  ScientifiCalculator(int num1, int num2) : super(num1, num2);
  double SqrtNumber1() => sqrt(num1);
  double SqrtNumber2() => sqrt(num2);
  List<num> Power_2(){
    num num_pow_1=pow(num1, 2);
    num num_pow_2=pow(num2, 2);
    return [num_pow_1,num_pow_2];
    }
  List<num> Power_3(){
    num num_pow_1=pow(num1, 3);
    num num_pow_2=pow(num2, 3);
    return [num_pow_1,num_pow_2];
    }
  num Power ()=> pow(num1, num2);

}