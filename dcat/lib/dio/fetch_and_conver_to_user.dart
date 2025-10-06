import 'dart:convert';

import 'package:dotenv/dotenv.dart';
import 'package:http/http.dart' as http;

class UserModel {
  final int id;
  final String name;
  final String email;
  final DateTime createdAt;
  final String userid;
  final String refreshtoken;
  final String? location; // ✅ nullable field

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.createdAt,
    required this.userid,
    required this.refreshtoken,
    this.location,
  });

  /// ✅ Create a UserModel from JSON
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'] is String ? int.parse(json['id']) : json['id'],
        name: json['name'] ?? '',
        email: json['email'] ?? '',
        createdAt: DateTime.parse(json['created_at']),
        userid: json['userid'] ?? '',
        refreshtoken: json['refreshtoken'] ?? '',
        location: json['location'], // safe nullable assignment
      );

  /// ✅ Convert UserModel to JSON
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'created_at': createdAt.toIso8601String(),
        'userid': userid,
        'refreshtoken': refreshtoken,
        if (location != null) 'location': location, // only include if not null
      };
}

Future<bool> createUser(
    String name, String email, String password, String signupUri) async {
  // final dio = Dio();
  final url = Uri.parse(
    signupUri,
  );

  final response = await http.post(url,
      body: jsonEncode({"name": name, "email": email, "password": password}));

  if (response.statusCode == 201) {
    return true;
  }
  return false;
}

Future<UserModel?> loginUser(
    String email, String password, String jwtUri, String loginUri) async {
  // final dio = Dio();

  final url = Uri.parse(loginUri);
  final urlJwt = Uri.parse(jwtUri);

  final token = await http.post(
    urlJwt,
    body: jsonEncode({"email": email}),
    headers: {"Content-Type": "application/json"},
  );
  // print(token.body);
  // print("\n\n");

  print(token.statusCode);
  if (token.statusCode == 200) {
    final res = await http.post(url,
        body: jsonEncode({"email": email, "password": password}),
        headers: {
          "Authorization": "Bearer ${jsonDecode(token.body)['token']}",
          "Content-Type": "application/json"
        });
    // print(res.body);

    print(res.statusCode);
    if (res.statusCode == 200) {
      final user = UserModel.fromJson(jsonDecode(res.body)['user'][0]);
      return user;
    }
  } else {
    // print(token.body);
    print("Failed to login");
  }

  // print(token.body);
  return null;
}

// print(token.);

void main() async {
  var env = DotEnv(includePlatformEnvironment: true)..load();
  print(env["LOGIN_URI"]);
  print(env["JWT_URI"]);
  print(env["SIGNUP_URI"]);
  // final ok = await createUser(
  //     "junayed", "junayedahamed660@gmail.com", "junayedaahamed");
  // if (ok) {
  final user = await loginUser("junayedahamed660@gmail.com", "junayedaahamed",
      env["JWT_URI"]!, env["LOGIN_URI"]!);
  if (user != null) {
    print(user.id);
    print(user.refreshtoken);

    print(user.userid);
    print(user.name);
    print(user.email);
    print(user.location);
    print(user.createdAt);
  } else {
    print("failed to login");
  }
  // }
}
