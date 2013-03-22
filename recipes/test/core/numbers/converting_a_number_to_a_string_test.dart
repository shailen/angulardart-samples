import 'packages/unittest/unittest.dart';

void main() {
  test('using toString()', () {
    expect(1234.toString(), equals('1234'));
    expect(3.1519.toString(), equals('3.1519'));
  });
  
  test('convert the number to decimal exponential notation', () {
    expect(1234.toStringAsExponential(), equals('1.234e+3'));
    expect(3.1519.toStringAsExponential(), equals('3.1519e+0'));
    
    // You can specify the fraction digits.
    expect(1234.toStringAsExponential(2), equals('1.23e+3'));
    expect(3.1519.toStringAsExponential(5), equals('3.15190e+0'));
  });
  
  test('convert the number with n digits after the decimal point', () {
    expect(1234.toStringAsFixed(2), equals('1234.00'));
    expect(3.1519.toStringAsFixed(2), equals('3.15'));
  });
  
  test('convert the number with n significant digits', () {
    expect(1234.toStringAsPrecision(6), equals('1234.00'));
    expect(3.1519.toStringAsPrecision(3), equals('3.15'));
  });
}