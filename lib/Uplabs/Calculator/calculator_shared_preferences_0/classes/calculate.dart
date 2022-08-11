import 'package:stack/stack.dart';

class Calculate {
  double calculate(String text) {
    Stack<String> stackValueFirst = Stack();
    Stack<String> stackValueSecond = Stack();
    Stack<String> operator = Stack();
    int whichStack = 2;

    for (int i = text.length - 1; i >= 0; i--) {
      int convertToAscii = text.codeUnitAt(i);

      if (convertToAscii >= 48 || convertToAscii <= 57) {
        // number
        if (whichStack % 2 == 0) {
          stackValueFirst.push(text[i]);
        } else {
          stackValueSecond.push(text[i]);
        }
      } else {
        // operators
        operator.push(text[i]);
        whichStack++;
      }
    }
    // stackValueFirst.print();
    // stackValueSecond.print();

    StringBuffer sb = StringBuffer();

    while (stackValueFirst.isNotEmpty) {
      print(stackValueFirst.pop() + 'a');
      // sb.write(stackValueFirst.pop());
    }
    // print(sb);
    return 0;
  }
}
