import 'package:http/http.dart';

void getTest() async {
  String url = 'https://jsonplaceholder.typicode.com/posts';
  Response response = await get(url);
  int statusCode = response.statusCode;
  Map<String, String> headers = response.headers;
  String contentType = headers['content-type'];
  String json = response.body;

  print(json);
}