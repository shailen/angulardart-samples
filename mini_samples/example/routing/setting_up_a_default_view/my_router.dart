library my_router;

import 'package:angular/angular.dart';

void myRouteInitializer(Router router, ViewFactory views) {
  views.configure({
    'hello': ngRoute(
        path: '/hello',
        enter: views('views/hello.html')),
    'default': ngRoute(
        path: '/default',
        defaultRoute: true,
        enter: views('views/default.html'))
  });
}
