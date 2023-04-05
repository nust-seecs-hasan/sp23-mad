void main(List<String> args) {
  myFunction(new Recipe(), "hello", 1);
  myFunction(new Recipe());
  myFunction(new Recipe(), 2, 1);
  myFunction("hello", 1);
  myFunction(new Recipe(), 1);
}

int myFunction(ingredient, [String abc = "", int def = 1]) {
  return 1;
}

class Recipe {
  Reciper() {
    print("Recipe");
  }
}
