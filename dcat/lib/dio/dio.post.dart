import 'dart:convert';

import 'package:dio/dio.dart';

void main() async {
  final dio = Dio();
  try {
    final data = {
      "name": "Test",
      "email": "junayedahamed660@gmail.com",
      "pass": "junayedaahamed"
    };
    Response response = await dio.post("http://localhost:8000/signup.php",
        data: jsonEncode(data));

    if (response.statusCode == 201) {
      print("Post created successfully");
    } else {
      print("Failed to create post");
    }
  } catch (e) {
    print(e.toString());
  }
}
