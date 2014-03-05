library my_router;

import 'package:angular/angular.dart';

void myRouteInitializer(Router router, ViewFactory views) {
  views.configure({
    'book': ngRoute(
      path: '/book/:bookId',
      mount: {
        'show': ngRoute(
            path: '/show',
            enter: views('views/show_book.html'))
      })
    });
}
