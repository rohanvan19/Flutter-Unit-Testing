import 'package:firebase_testing/validation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Empty Email Test', () {
    var result = FieldValidator.validateEmail('');
    expect(result, 'E-mail cannot be empty');
  });
  test('Invalid Email Test', () {
    var result = FieldValidator.validateEmail('rohan');
    expect(result, 'Enter valid E-mail');
  });
  test('Valid Email Test', () {
    var result = FieldValidator.validateEmail('vanmalirohan58@gmail.com');
    expect(result, null);
  });
  test('Empty Phone Test', () {
    var result = FieldValidator.validatePhone('');
    expect(result, 'Phone number cannot be empty');
  });
  test('Invalid Phone Test', () {
    var result = FieldValidator.validatePhone('rohan123');
    expect(result, 'Phone number must be numeric digits only');
  });
  test('Invalid Phone Test', () {
    var result = FieldValidator.validatePhone('12345');
    expect(result, 'Phone number has to be 10 digits');
  });
  test('Valid Phone Test', () {
    var result = FieldValidator.validatePhone('9511763281');
    expect(result, null);
  });
  test('Empty Password Test', () {
    var result = FieldValidator.validatePassword('');
    expect(result, 'Password cannot be empty');
  });
  test('Invalid Password Test', () {
    var result = FieldValidator.validatePassword('rohan');
    expect(result, 'Password must have minimum eight characters, at least one\n letter, one number and one special character');
  });
  test('Valid Password Test', () {
    var result = FieldValidator.validatePassword('rohan@123');
    expect(result, null);
  });
}
