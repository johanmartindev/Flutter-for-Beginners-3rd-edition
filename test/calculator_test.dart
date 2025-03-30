import 'package:flutter_test/flutter_test.dart';
import 'package:hello_world/Chapter12/calculator.dart';

void main() {
  late Calculator calculator;
  setUp(() {
    calculator = Calculator();
  });
  test(
    'calculator.sumTwoNumbers() sum both numbers',
    () => expect(calculator.sumTwoNumbers(1, 2), 3),
  );

  group("calculator tests", () {
    test(
      'sumTwoNumbers() sum both numbers',
      () => expect(calculator.sumTwoNumbers(1, 2), 3),
    );
    test(
      'sumTwoNumbers() sum negative number',
      () => expect(calculator.sumTwoNumbers(1, -1), 1),
    );
  });
}
