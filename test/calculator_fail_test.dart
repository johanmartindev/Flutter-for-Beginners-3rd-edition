import 'package:flutter_test/flutter_test.dart';
import 'package:hello_world/Chapter12/calculator_fail.dart';

void main() {
  late Calculator calculator;
  setUp(() {
    calculator = Calculator();
  });
  test(
    'calculator.sumTwoNumbers() sum both numbers',
    () => expect(calculator.sumTwoNumbers(1, 2), 3),
  );
}
