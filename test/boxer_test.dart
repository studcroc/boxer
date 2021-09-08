import 'package:boxer/boxer.dart';
import 'package:test/test.dart';

void main() {
  test("Boxer's punch method should log as expected", () {
    Boxer.punch("Test Log Message", label: "TEST");
  });
}
