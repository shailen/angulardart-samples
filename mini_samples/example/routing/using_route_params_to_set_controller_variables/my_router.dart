library my_router;

import 'package:angular/angular.dart';

void myRouteInitializer(Router router, ViewFactory views) {
    router.root
        ..addRoute(
            name: 'active',
            path: '/active')
        ..addRoute(
            name: 'completed',
            path: '/completed');
}
