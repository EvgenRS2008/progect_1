import 'dart:io';

void main() {
  print("Введіть перше число:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Введіть операцію (+, -, *, /):");
  String operator = stdin.readLineSync()!;

  print("Введіть друге число:");
  double num2 = double.parse(stdin.readLineSync()!);

  double result;
  switch (operator) {
    case "+":
      result = num1 + num2;
      break;
    case "-":
      result = num1 - num2;
      break;
    case "*":
      result = num1 * num2;
      break;
    case "/":
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print("Помилка: Ділення на нуль");
        return;
      }
      break;
    default:
      print("Невірна операція");
      return;
  }

  print("Результат: $result");
}
