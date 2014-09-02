// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library my_controller;

import 'package:angular/angular.dart';
import 'dart:html' show querySelector;

@Controller(
  selector: '[my-controller]',
  publishAs: 'ctrl'
)
class MyController implements AttachAware {
  String username;
  String errorMessage = '';
  Scope scope;

  MyController(this.scope);

  attach() {
    NgForm form = scope.context['signup_form'];
    querySelector('#username').onKeyUp.listen((event) {
      if (form.errorStates.keys.contains('uniqueness-constraint')) {
        errorMessage = "That name has already been taken";
      } else {
        errorMessage= '';
      }
    });
  }

  void signupForm() {
    // ...
  }
}
