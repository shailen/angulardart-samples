library todomvc.module;

import 'package:angular/angular.dart';
import 'controller.dart' show TodoController;

class TodoModule extends Module {
  TodoModule() {
    type(TodoController);
  }
}