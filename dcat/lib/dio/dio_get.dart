import 'package:dio/dio.dart';

void main() async {
  final dio = Dio();
  var response = await dio.get("https://jsonplaceholder.typicode.com/users/1");
  print(response.data);
  var response2 = await dio.get("https://jsonplaceholder.typicode.com/users/1");
  print(response2.data);
}
