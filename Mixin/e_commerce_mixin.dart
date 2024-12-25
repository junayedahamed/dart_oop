enum UserType {
  admin,
  customer,
  orderReceiver,
}

mixin CanviewAllProduct {
  void view_all_product() {
    print(" can see aLL product");
  }
}

mixin CanApproveOrder {
  void ApproveOrder(UserType userType) {
    print("Order approved by ${userType}");
  }
}

class User {
  String name;
  String email;
  UserType userType;

  User(this.name, this.email, this.userType);
}

class Customer extends User {
  Customer(super.name, super.email, super.userType);

  void buyProduct() {
    print("${userType} can buy product");
  }
}

class Admin extends User with CanviewAllProduct, CanApproveOrder {
  Admin(super.name, super.email, super.userType);

  ///we dont want to write same function many time THIS FUNCTION ALREADY IMPLEMENTED ON CUSTOMER CLASS

  // view() {
  //   print("Admin view all product with edit acess");
  // }
  ///we dont want to write same function many time THIS FUNCTION ALREADY IMPLEMENTED ON ORDER RECIEVER CLASS
  // void receive() {
  //   print("Order receiving");
  // }
}

class OrderReceiver extends User with CanApproveOrder {
  OrderReceiver(super.name, super.email, super.userType);
}

class div {
  swithcher(User obj) {}
}

void main() {
  Admin a1 = Admin("Junayed", "email", UserType.admin);

  OrderReceiver rec = OrderReceiver("kkkk", "AAAaaa", UserType.orderReceiver);
  Customer cus = Customer("Customer", "Customer mail", UserType.customer);

  a1.ApproveOrder(a1.userType);
  rec.ApproveOrder(rec.userType);
  cus.buyProduct();
}
