import 'package:dio/dio.dart';

void main() async {
  final dio = Dio();

  Response response = await dio.post(
      "https://jsonplaceholder.typicode.com/posts",
      data: {"title": "Jjuayed ahamed", "body": "this is a post", "userId": 1});

  if (response.statusCode == 201) {
    print("Post created successfully");
  } else {
    print("Failed to create post");
  }
}
