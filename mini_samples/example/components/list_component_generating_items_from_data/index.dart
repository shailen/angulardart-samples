library main;

// Temporary, please follow https://github.com/angular/angular.dart/issues/476
@MirrorsUsed(
  targets: const ['my_component'],
  override: '*')
import 'dart:mirrors';
import 'package:angular/angular.dart';
import 'package:di/di.dart';

class Item {
  String name;
  Item(this.name);
}

// include START
///The component defines a `my-component` element
///that creates a bulleted list.
///The `ng-repeat` directive
///creates a list item value every value in the
///MyComponent class's `values` field.
@NgComponent(
    selector: 'my-component',
    publishAs: 'ctrl',
    template: '''<ul><li ng-repeat="value in ctrl.values">{{value.name}}</li></ul>'''
)
class MyComponent {
  List<Item> values = [new Item('1'), new Item('2'), new Item('3'), new Item('4')];

  MyComponent() {
    print('MyComponent');
  }
}
// include END

class MyAppModule extends Module {
  MyAppModule() {
    type(MyComponent);
  }
}

void main() {
  ngBootstrap(module: new MyAppModule());
}
