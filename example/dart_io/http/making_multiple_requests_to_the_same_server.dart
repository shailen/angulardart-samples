/// Use the `Client` class in the http Pub package for making multiple requests
/// to the same server. Using `Client` keeps keep a persistent connection open
/// to the server and is better than making multiple single requests.

import 'package:http/http.dart' as http;

printResponseBody(response) {
  print(response.body.length);
  if (response.body.length > 100) {
    print(response.body.substring(0, 100));
  } else {
    print(response.body);
  }
  print('...\n');
}

void main() {
   var url = 'http://www.google.com/';
   var client = new http.Client();
   client.get('${url}/search')
       .then((response) {
         printResponseBody(response);
         return client.get('${url}/doodles');
        })
       .then(printResponseBody)

       // Close the connection when done.
       .whenComplete(client.close);
}
