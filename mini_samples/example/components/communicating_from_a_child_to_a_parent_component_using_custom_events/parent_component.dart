// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library parent_component;

import 'package:angular/angular.dart';

@NgComponent(
    selector: 'parent-component',
    templateUrl: 'parent_component.html',
    publishAs: 'cmp',
    applyAuthorStyles: true
)
class ParentComponent implements NgShadowRootAware {
  onShadowRoot(shadowRoot) {
    shadowRoot.on['foo-event'].listen((event) {
      shadowRoot.querySelector('#my-div')
          .text = 'In the parent, a custom event was listened on';
    });
  }
}