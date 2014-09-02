library my_directive;

import 'package:angular/angular.dart';

@Decorator(
    selector: '[ensure-unique]')
class MyCustomFormValidator implements NgValidator {
  MyCustomFormValidator(NgModel ngModel) {
    ngModel.addValidator(this);
  }

  final String name = 'uniqueness-constraint';

  // Some dummy data. In a real app, the data would be most likely be persisted
  // somewhere and obtained through a service.
  static const List<String> TAKEN_NAMES = const ['john', 'paul', 'george',
                                                 'ringo'];

  bool isValid(username) => !TAKEN_NAMES.contains(username);
}