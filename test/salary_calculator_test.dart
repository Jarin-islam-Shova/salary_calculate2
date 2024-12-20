import 'package:flutter_test/flutter_test.dart';

int calculateSalary(int hours) {
  if (hours <= 40) {
    return hours * 400;
  } else {
    return (40 * 400) + ((hours - 40) * 600);
  }
}

void main() {
  test('Calculate salary for 35 hours', () {
    expect(calculateSalary(35), 14000);
  });

  test('Calculate salary for 45 hours', () {
    expect(calculateSalary(45), 23000);
  });
}
