class String_checker {
  String? anything;

  String reverse(String s) {
    String rs = '';

    for (int i = s.length - 1; i >= 0; i--) {
      rs += s[i];
    }
    return rs;
  }

  bool is_palindrome(String s) {
    String x = s;
    if (s.isEmpty == true) return true;

    String reverse_s = reverse(x);
    if (s == reverse_s) {
      return true;
    }
    return false;
  }
}

void main() {
  String_checker s1 = String_checker();
  String s = s1.anything = "junayed";
  bool a = s1.is_palindrome(s);
  print("$a");
}
