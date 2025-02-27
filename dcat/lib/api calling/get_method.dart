import 'dart:convert';

import 'package:http/http.dart' as http;

// class DataModel {
//   final List data;
//   var msg = List;

//   DataModel({required this.data});

//   factory DataModel.fromJson(dynamic json) {
//     return DataModel(data: json['value'] as List);
//   }
// }

class GetMethod {
  Future<dynamic> get() async {
    try {
      final url = 'https://jsonplaceholder.typicode.com/posts';
      var uri = Uri.parse(url);
      var response = await http.get(uri);
      if (response.statusCode == 200) {
        var value = jsonDecode(response.body);
        return value;
      } else {
        print("request corrupted");
      }
    } catch (e) {
      print("Error: $e");
    }
  }
}

void main() {
  GetMethod api = GetMethod();
  var value = api.get();
  value.then((getvalue) {
    print(getvalue);
  });
}
