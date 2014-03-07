// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library component_one;
import 'dart:html';

import 'package:angular/angular.dart';

@NgComponent(
    selector: 'component-one',
    templateUrl: './component_one.html',
    publishAs: 'cmp',
    applyAuthorStyles: true
)
class ComponentOne {
  dispatchIt(Event e) {
    e.target.dispatchEvent(new CustomEvent('foo'));
  }
}