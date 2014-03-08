library todomvc.lib.todo_controller;

import 'package:angular/angular.dart';
import 'model.dart' show Todo;

@NgController(
    selector: '[todo-controller]',
    publishAs: 'ctrl'
)
class TodoController {
  // List<Todo> todos = [new Todo()..title= 'this', new Todo()..title = 'that'];
  List<Todo> todos = [];
}