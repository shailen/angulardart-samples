// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:angular/angular.dart';

@Controller(
  selector: '[my-controller]',
  publishAs: 'ctrl'
)
class MyController {
  String username;
  String pattern = r'^[a-z0-9]{3,8}$';
  String usernameMessage = "3-8 lowercase letters or numbers only";

  void signupForm() {
    // ...
  }
}
