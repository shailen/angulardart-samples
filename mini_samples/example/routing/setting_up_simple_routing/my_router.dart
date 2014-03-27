library my_router;

import 'package:angular/angular.dart';

myRouteInitializer(Router router, RouteViewFactory views) {
  views.configure({
    'hello': ngRoute(
        path: '/hello',
        enter: views('views/hello.html')),
    'goodbye': ngRoute(
        path: '/goodbye',
        enter: views('views/goodbye.html'))
  });
}
