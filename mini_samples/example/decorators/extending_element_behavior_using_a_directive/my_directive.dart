library my_directive;

import 'package:angular/angular.dart';

import 'dart:html' show Element, InputElement;

@Decorator(selector: '[is-palindrome]')
class MyDirective implements AttachAware{

  Element element;

  MyDirective(this.element);

  attach(){
    element.onKeyUp.listen((_) {
      if (isPalindrome((element as InputElement).value)) {
        element.classes.add('palindrome');
      } else {
        element.classes.remove('palindrome');
      }
    });
  }

  bool isPalindrome(value) {
    if (value.isEmpty || value.length == 1) return false;

    var buffer = new StringBuffer();
    var lcText = value.toLowerCase();

    for (int i = lcText.length - 1; i >= 0; i--) {
      buffer.write(lcText[i]);
    }
    return lcText == buffer.toString();
  }
}