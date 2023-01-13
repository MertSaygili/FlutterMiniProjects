enum Animal { cat, dog, turtle, lion, elephant, monkey, giraffe, zebra }

extension AnimalExtension on Animal {
  String get name {
    switch (this) {
      case Animal.cat:
        return 'Cat';
      case Animal.dog:
        return 'Dog';
      case Animal.turtle:
        return 'Turtle';
      case Animal.lion:
        return 'Lion';
      case Animal.elephant:
        return 'Elephant';
      case Animal.monkey:
        return 'Monkey';
      case Animal.giraffe:
        return 'Giraffe';
      case Animal.zebra:
        return 'Zebra';
    }
  }
}
