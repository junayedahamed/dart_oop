import 'dart:convert';

import 'package:http/http.dart' as http;

class UserModel {
  int userId;
  int id;
  String title;
  String body;

  UserModel(this.userId, this.id, this.title, this.body);
}

class ApiCallsystem {
  Future<void> post(UserModel user) async {
    try {
      final url = 'https://jsonplaceholder.typicode.com/posts';
      var uri = Uri.parse(url);

      var response = await http.post(uri,
          headers: {
            "Content-Type": "application/json",
          },
          body: jsonEncode({
            "userId": user.userId,
            "id": user.id,
            "title": user.title,
            "body": user.body,
          }));
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
    } catch (e) {
      print(e);
    }
  }
}

void main() {
  UserModel user1 = UserModel(10, 1, "hello world", "this is my first post");
  UserModel user2 = UserModel(11, 2, "hello world", "this is my first post");
  UserModel user3 = UserModel(12, 3, "hello world", "this is my first post");
  UserModel user4 = UserModel(13, 4, "hello world", "this is my first post");
  UserModel user5 = UserModel(14, 2, "hello world", "this is my first post");

  final List<UserModel> users = [
    user1,
    user2,
    user3,
    user4,
    user5,
  ];
  ApiCallsystem api = ApiCallsystem();
  var selected = users.where((user) {
    return user.id == 2;
  });

  for (var element in selected) {
    api.post(element);
  }
}
