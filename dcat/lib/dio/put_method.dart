import 'package:dio/dio.dart';

void main() async {
  final Dio dio = Dio();
  final Response res = await dio.put(
      "https://jsonplaceholder.typicode.com/posts/1",
      data: {"title": "foo", "body": "bar", "userId": 1});

  if (res.statusCode == 200) {
    print("Post updated successfully");
  } else {
    print("Failed to update post");
  }
}
