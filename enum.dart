enum tools { cut, paste, pen, fill, dhjagd }

void main() {
  final ponter = tools.cut;
  switch (ponter) {
    case tools.cut:
      print("Cut tool");

    case tools.fill:
      print("Fill tool");
    case tools.pen:
      print("pen tool");
    case tools.paste:
      print("paste tool");
    default:
      print("unknown tool");
  }
}
