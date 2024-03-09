void main() {
  String state = "disconnected";

  String check;
  if (state == 'connected') {
    check = "Yes";
  } else if (state == 'waitting') {
    check = 'waitting';
  } else {
    check = "No";
  }
  print(check);

  //switch case
  switch (state) {
    case 'connected':
      print("connected");
      break;
    case 'waitting':
      print('waitting');
      break;
    default:
      print("disconnected");
  }
}
