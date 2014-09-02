// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';
import 'my_directive.dart' show MyDirective;

class MyAppModule extends Module {
  MyAppModule() {
    bind(MyDirective);
  }
}

main() {
  applicationFactory()
      .addModule(new MyAppModule())
      .run();
}