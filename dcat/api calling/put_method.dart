import 'dart:convert';

import 'package:http/http.dart' as http;

class PutMethod {
  Future<void> put(int id, String pass, String name) async {
    try {
      final url = Uri.parse('https://jsonplaceholder.typicode.com/posts/$id');
      var response = await http.put(url,
          body: jsonEncode({
            "id": id,
            "title": pass,
            "body": name,
          }));

      if (response.statusCode == 200) {
        print("Updated Successfully of data $id");
      } else {
        print("something went wrong");
      }
    } catch (e) {
      print("error $e");
    }
  }
}

void main() {
  PutMethod put = PutMethod();
  put.put(1, "1256894", "Junayed");
}
