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
      String url = 'https://jsonplaceholder.typicode.com/posts';
    } catch (e) {}
  }
}

void main() {}
