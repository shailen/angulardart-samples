library my_router;

import 'package:angular/angular.dart';

void myRouteInitializer(Router router, ViewFactory views) {
  views.configure({
    'about': ngRoute(
        path: '/about',
        enter: views('views/about.html')),
    'bio': ngRoute(
        path: '/bio',
        enter: views('views/bio.html'))
  });
}

