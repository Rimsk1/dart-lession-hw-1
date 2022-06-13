
void main() {
  int div  = division(21, 8);
  print("$div остаток от деления 21 на 8 - ");

  division2(21, 8);

  int div2 = division(17,4);
  print(" остаток от деления - $div2 ");

  division2(77,6);

  print(sumNumbers(17));
  sumNumbers2(77);

  rounder(3.1416894);

  sumNumbers3(100);
  sumNumbers3(879);
  sumNumbers3(2000);
}
//1. В переменных q и w хранятся два натуральных числа. Создайте функцию,
//      выводящую на экран результат деления q на w с остатком.
//    Пример вывода программы (для случая, когда в q хранится 21, а в w хранится 8)

int division(final q, final w){//через return
  return q%w;
}
void division2(final q, final w){//с  выводом на текста и результата на экран
  final div2 = q~/w;
  final remainder = q%w;
  print("$q / $w = $div2, остаток от деления $q на $w равен $remainder");
}
// 2. В переменной n хранится натуральное двузначное число. Создайте функцию,
// вычисляющую и выводящую на экран сумму цифр числа n.

int sumNumbers(int a){ //через return
  final firstNumber = a~/10;
  final secondNumber = a%10;
  return firstNumber+secondNumber;
}
//лично мне на данном этапе удобнее делать void фукнции выводящую на экран сразу
// и результат и текст, но для восприятия дублирую функцию в return
void sumNumbers2(int a){
  final firstNumber = a~/10;
  final secondNumber = a%10;
  final sum = firstNumber+secondNumber;
  print("сумма чисел числа $a равна $sum");
}
//3. В переменной n хранится вещественное число с ненулевой дробной частью. Создайте функцию,
//      округляющую число n до ближайшего целого и выводящую результат на экран.
void rounder(final x){
  final y = x.round();
  print("$x округляем до $y");
}
//4. В переменной n хранится натуральное трёхзначное число. Создайте функцию,
//      вычисляющую и выводящую на экран сумму цифр числа n.
void sumNumbers3(int a) {
  if (a >= 100 && a<999) {
    final firstNumber = a ~/ 100;
    final secondNumber = a % 100 ~/ 10;
    final thirdNumber = a % 10;
    final sum = firstNumber + secondNumber + thirdNumber;
    print("сумма чисел числа $a равна $sum");
  }
  else("число $a должно быть трехзначным");
}