// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library child_component;

import 'dart:html';
import 'package:angular/angular.dart';

@Component(
    selector: 'child-component',
    templateUrl: 'child_component.html',
    publishAs: 'cmp'
)
class ChildComponent {
  dispatchIt(Event e) {
    e.preventDefault();
    e.target.dispatchEvent(new CustomEvent('foo-event'));
  }
}