// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library my_controller;

import 'package:angular/angular.dart';


// include START
/// The controller defines a single `text` variable.
@NgController(
    selector: '[my-controller]',
    publishAs: 'ctrl'
)
class MyController {
  String text = 'Angular Dart';
}