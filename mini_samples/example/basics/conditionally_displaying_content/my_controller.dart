// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library my_controller;

import 'package:angular/angular.dart';

@Controller(
    selector: '[my-controller]',
    publishAs: 'ctrl'
)
class MyController {
  String text = '';

  bool get isPalindrome {
    if (text.isEmpty || text.length == 1) return false;

    var buffer = new StringBuffer();
    var lcText = text.toLowerCase();

    for (int i = lcText.length - 1; i >= 0; i--) {
      buffer.write(lcText[i]);
    }
    return lcText == buffer.toString();
  }
}