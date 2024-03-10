//normal function
add_two_num(int x, int y) {
  return x + y;
}

//arrow function
add() => print(10 + 12);
add_num(int x, int y) => x + y;
even_odd(int num) => num % 2 == 0 ? "even" : "odd";

null_val(int? x) => x == null ? null : x;
// optional positional parameter
sum(int x, [y = 15]) => x + y;

//optional named parameter
values(a, b, c, {d, e}) {
  print({a, b, c, d, e});
}

//higher order function

higher_order_fun() {
  return () => "hello";
}

greet(Function fn) {
  fn();
}

void main() {
  print(add_num(10, 15));
  print(even_odd(35));
  print(null_val(15));

  print(sum(10));

  values(10, 11, 12, e: 45);

  //calling higher order function
  print(higher_order_fun()()); //for receiving higher order fnction use ()()
  greet(add);
}
