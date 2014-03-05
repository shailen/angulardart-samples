library my_router;

import 'package:angular/angular.dart';

void myRouteInitializer (Router router, ViewFactory views) {
  views.configure({
    'articles': ngRoute(
        path: '/articles',
        mount: {
          'all': ngRoute(
              path: '/all',
              enter: views('views/all_articles.html')),
          'featured': ngRoute(
              path: '/featured',
              enter: views('views/featured_article.html'))
      })
  });
}