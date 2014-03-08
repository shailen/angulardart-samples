import 'package:unittest/unittest.dart';

import 'package:todomvc/model.dart' show Todo;

void main() {
  group('Item', () {
    test('default', () {
      var todo = new Todo();
      expect(todo.title, isEmpty);
      expect(todo.completed, isFalse);
    });
  });
}