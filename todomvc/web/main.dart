import 'package:angular/angular.dart';
import 'package:todomvc/module.dart' show TodoModule;

void main() {
  ngBootstrap(module: new TodoModule());
}
