// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:angular/angular.dart';
import 'dart:html';


@NgController(
  selector: '[my-controller]',
  publishAs: 'ctrl'
)
class MyController implements NgAttachAware {
  String username;
  String errorMessage = '';
  Scope scope;

  static const MINLENGTH_CHARS = 3;
  num get minlengthChars => MINLENGTH_CHARS;

  static const MAXLENGTH_CHARS = 8;
  num get maxlengthChars => MAXLENGTH_CHARS;

  static const REQUIRED = 'required';
  String get required => REQUIRED;

  static const MINLENGTH = "minlength";
  String get minlength => MINLENGTH;

  static const MAXLENGTH = 'maxlength';
  String get maxlength => MAXLENGTH;

  static const Map<String, String> ERRORS_MAP = const {
    REQUIRED: 'This field is required',
    MINLENGTH: 'This field must have at least $MINLENGTH_CHARS characters',
    MAXLENGTH: 'This field must have at most $MAXLENGTH_CHARS characters'};
  Map<String, String> get errorsMap => ERRORS_MAP;

  var errorKeys = [];

  MyController(this.scope);

  attach() {
    NgForm form = scope.context['signup_form'];

    querySelector('#username').onKeyUp.listen((event) {
      errorKeys = form.errorStates.keys;
    });
  }

  void signupForm() {
    // ...
  }
}
