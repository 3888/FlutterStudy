void main(List<String> arguments) {
  defaultArgs();
  defaultArgs("Hello");

  print(highOrderFun(30, 21, 2, add)); // 7
}

void defaultArgs([String name = "DefaultArg"]) {
  print('The name is $name');
}

typedef int MYfunctionAdd(int a, int b);

int add(int a, int b) {
  return a + b;
}

int highOrderFun(int c, int a, int b, MYfunctionAdd func) {
  return c - func(a, b);
}

void positionalVSNamedArgs() {

  addNamed(); // can be omitted
  addPositional(1, 1); // required
}

void addNamed({a, b}) { // a & b are named parameters (because of the curly braces)
  print(a + b);
}

void addPositional(a, b) { // a & b are positional parameters
  print(a + b); // print() is a built-in function that will be explained later
}
