import 'package:dio/dio.dart';

void main() async {
  final dio = Dio();
  Response response =
      await dio.delete("https://jsonplaceholder.typicode.com/posts/1");
  if (response.statusCode == 200) {
    print("Post deleted successfully");
  } else {
    print("Failed to delete post");
  }
}
