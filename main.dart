// I have 2 type of calculators normal and scintific 
// normal one has + , -, * , /, %
// scintific one has  sqrt , kup , kare , daha fazlasi 

import 'dart:io';

import 'Claculator.dart';
void main(){

print("Welcome to Our Calculater\n"+"For Simple calculator Please Press 1\nFor scientific calculator Please Press 2");
int? ChooseCalculator = int.parse(stdin.readLineSync()??'1');
while(ChooseCalculator!>2 ||ChooseCalculator<1 ){
print("For Simple calculator Please Press 1\nFor scientific calculator Please Press 2");
ChooseCalculator = int.parse(stdin.readLineSync()??'1');
print('$ChooseCalculator');
}

print("Enter 2 number please");
int? num1 = int.parse(stdin.readLineSync()??'0');
int? num2 = int.parse(stdin.readLineSync()??'0');

switch(ChooseCalculator){
  case 1:
  print('You selcet Simple Calculator');
  SimpleCalculator Object_1 = SimpleCalculator(num1, num2);
  Simple(Object_1, num1, num2);
  break;
  case 2:
  print('You selcet Scientific Calculator');
  ScientifiCalculator Object_2 =ScientifiCalculator(num1,num2);
  Complex(Object_2, num1, num2);
  break;
  default:
}

}

void Simple(var Object_1, num1, num2){
int ? SelectedOperation=0;
while(SelectedOperation!>4 ||SelectedOperation<1 ){
    print('Choose one of these opreation please');
    print('1 - Sum');
    print('2 - Subtract');
    print('3 - Multiply');
    print('4 - Divide');
    print('[1-4] araligi haric herhangi tus - Tekrar');
    SelectedOperation= int.parse(stdin.readLineSync()!);
    switch(SelectedOperation){
      case 1:
      print('number1 + number2 = ${Object_1.SumElements()}');
      break;
      case 2:
      print('number1 - number2 = ${Object_1.SubElements()}');
      break;
      case 3:
      print('number1 * number2 = ${Object_1.MulElements()}');
      break;
      case 4:
      print('number1 / number2 = ${Object_1.DividElements()}');
      break;
      default:
      SelectedOperation=0;
      break;
    }

}


}

void Complex(var Object_1, num1, num2){
int ? SelectedOperation=0;

while(SelectedOperation!>8 ||SelectedOperation<1 ){
    print('Choose one of these opreation please');
    print('1 - Sum');
    print('2 - Subtract');
    print('3 - Multiply');
    print('4 - Divide');
    print('[1-4] araligi haric herhangi tus - Tekrar');
    SelectedOperation= int.parse(stdin.readLineSync()!);
    switch(SelectedOperation){
      case 1:
      print('number1 + number2 = ${Object_1.SumElements()}');
      break;
      case 2:
      print('number1 - number2 = ${Object_1.SubElements()}');
      break;
      case 3:
      print('number1 * number2 = ${Object_1.MulElements()}');
      break;
      case 4:
      print('number1 / number2 = ${Object_1.DividElements()}');
      break;
       case 5:
      print('kok number1, kok number2 = ${Object_1.SqrtNumber1()} ${Object_1.SqrtNumber2()}');
      break;
      case 6:
      print('number1^2, number2^2 =${Object_1.Power_2()}');
      break;
      case 7:
      print('number1^3, number2^3= ${Object_1.Power_3()}');
      break;
      case 8:
      print('number1^number2 = ${Object_1.Power()}');
      break;
      default:
      SelectedOperation=0;
      break;
    }
}}