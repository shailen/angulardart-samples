import 'package:unittest/unittest.dart';
import 'package:di/di.dart';
import 'package:angular/angular.dart';
import 'package:angular/mock/module.dart';

import 'package:todomvc/module.dart' show TodoModule;
import 'package:todomvc/controller.dart' show TodoController;

main() {
  setUp(setUpInjector);
  tearDown(tearDownInjector);

  group('TodoController', () {
    TodoController ctrl;
    Injector injector;

    setUp(module((Module m) {
      m.install(new TodoModule());
      inject((Injector _injector, MockHttpBackend _backend) {
        injector = _injector;
      });
      inject((TodoController _ctrl) => ctrl = _ctrl);
    }));

    test('controller injected into module', () {
      var item = injector.get(TodoController);
      expect(item, isNotNull);
    });

    test('initial state', () {
      expect(ctrl.todos, isEmpty);
    });
  });
}