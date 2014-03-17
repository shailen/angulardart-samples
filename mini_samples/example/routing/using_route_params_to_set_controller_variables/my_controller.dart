// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library my_controller;

import 'package:angular/angular.dart';

@NgController(
    selector: '[my-controller]',
    publishAs: 'ctrl'
)
class MyController implements NgDetachAware {
  static const ACTIVE = 'active';
  static const COMPLETED = 'completed';
  String get active => ACTIVE;
  String get completed => completed;

  String myVar = '';

  RouteHandle activeHandle, completedHandle;

  Router router;

  MyController(this.router) {
    activeHandle = router.root.getRoute(ACTIVE).newHandle()
        ..onEnter.listen((_) => myVar = ACTIVE);

    completedHandle = router.root.getRoute(COMPLETED).newHandle()
        ..onEnter.listen((_) => myVar = COMPLETED);
  }

  detach() {
    activeHandle.discard();
    completedHandle.discard();
  }
}