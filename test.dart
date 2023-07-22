import 'dart:html';
import 'dart:io';
import 'dart:math';

class Calculator {

Calc(){}

double add (double num1,double num2){

  return num1+num2;
}
 double subtract(double num1, double num2) {
  
    return num1 - num2;
  }

  double multiply(double num1, double num2) {

    return num1 * num2;
  }

  double divide(double num1, double num2) {

    return num1 / num2;
  }
}

void main (){

Calculator a=new Calculator();
while(true){
try{
   print("Enter the operation (+, -, , /) or q to quit:");
   String?operation=stdin.readLineSync();
   if (operation=='q'){
    break;
   }
   print("Enter the first number:");
   String?num1=stdin.readLineSync();
   double num1Double = double.parse(num1!);
   print("Enter the second number:");
    String?num2=stdin.readLineSync();
    double num2Double = double.parse(num2!);
    if(operation=='+'){
    print(a.add(num1Double,num2Double))

    }
    else if (operation =='-'){
      print(a.subtract(num1Double, num2Double));
      
    }
    else if(operation =='*'){
    print(a.multiply(num1Double, num2Double));

    }
    else if (operation=='/'){
      print(a.divide(num1Double, num2Double));

    }
  
    else {
      print('invalid operation');
    }
}
    catch(e){
     print("Error: $e!") ;
    }



      




}

}


