import 'package:flutter_test/flutter_test.dart';

int calculateSalary(int hours) {
  // Define rates
  int regularRate = 400;
  int overtimeRate = 600;
  int regularHours = 40;

  // Calculate salary based on hours worked
  if (hours <= regularHours) {
    return hours * regularRate;
  } else {
    int regularPay = regularHours * regularRate;
    int overtimePay = (hours - regularHours) * overtimeRate;
    return regularPay + overtimePay;
  }
}

void main() {
  test('Calculate salary for 35 hours', () {
    expect(calculateSalary(35), 14000); // 35 * 400 = 14000
  });

  test('Calculate salary for 45 hours', () {
    expect(calculateSalary(45), 19000); // (40 * 400) + (5 * 600) = 16000 + 3000 = 26000
  });

  // Adding an edge case for verification
  test('Calculate salary for 40 hours', () {
    expect(calculateSalary(40), 16000); // 40 * 400 = 16000
  });

  // Additional test for more hours
  test('Calculate salary for 50 hours', () {
    expect(calculateSalary(50), 22000); // (40 * 400) + (10 * 600) = 16000 + 6000 = 34000
  });
}
