enum Accontype { free, premium, vip, dfgsd }

enum Names { user1, user2, user3, guest, notguest }

enum purched { type1, type2, type3, nothing }

void main() {
  Names defaultname = Names.notguest;

  Names new1 = Names.user1;
  purched per1 = purched.type2;
  Accontype ac = Accontype.premium;

  if (defaultname != Names.guest) {
    print("Accounttype: $ac");
    print("name of user: $new1");
    print("purchage:$per1");

    print(ac.index);
  }

  switch (Accontype.dfgsd) {
    case Accontype.free:
      print(Accontype.free);
      print(purched.type1);
      break;

    case Accontype.premium:
      print(Accontype.premium);
      print(purched.type2);
      break;
    case Accontype.vip:
      print(Accontype.vip);
      print(purched.type3);
      break;

    default:
      print("account : ${Names.guest} Account");
      print(purched.nothing);
      break;
  }
}
