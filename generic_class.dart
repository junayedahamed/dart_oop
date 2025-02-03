class Data<T> {
  T? _value;

  //generic method setter
  genericMethod(T newValue) {
    _value = newValue;
  }

  T genericMethodforGet() {
    return _value!;
  }
}

void main() {
  //Making the Generic class  as Int type class
  Data<int> data = Data();
  data.genericMethod(250);
  print(data.genericMethodforGet());

  //Making the Generic class  as double type class
  Data<double> floatData = Data();
  floatData.genericMethod(6.02 * 10);
  print(floatData.genericMethodforGet());

  //Making the Generic class  as String type class
  Data<String> myString = Data();
  myString.genericMethod("Junayed Ahamed");
  print(myString.genericMethodforGet());
}
