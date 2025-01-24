import 'package:http/http.dart' as http;

// import 'get_method.dart';

class DeleteMethodClass {
  Future<void> deleteMethod(int id) async {
    try {
      final url = 'https://jsonplaceholder.typicode.com/posts/$id';
      final uri = Uri.parse(url);

      var response = await http.delete(uri);
      // print(response.statusCode);
      if (response.statusCode == 200) {
        print("User $id Deleted succesfully");
      } else {
        print("error");
        print(response.statusCode.toString());
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

void main() {
  // UserModel user1=UserModel("10",1, title, body)

  DeleteMethodClass del = DeleteMethodClass();
  del.deleteMethod(1);
}
