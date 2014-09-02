// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library my_controller;

import 'package:angular/angular.dart';

class User {
  String name;
  bool registered;
  User(this.name, [this.registered=false]);
}

@Controller(
    selector: '[my-controller]',
    publishAs: 'ctrl'
)
class MyController {
  List<User> users = [
    new User('Anna', true),
    new User('Hannah'),
    new User('Mary'),
    new User('Mem'),
    new User('Otto'),
  ];
}