// ignore_for_file: unused_element, avoid_print

class Stack {
  late int _stackSize;
  late List _stack;
  late int _top;

  Stack(int stackSize) {
    _top = -1;
    _stackSize = stackSize;
    _stack = List.filled(_stackSize, null, growable: false);
  }

  void push(String val) {
    if (_top < _stackSize - 1) {
      _stack[++_top] = val;
    } else {
      print('Stack is full');
    }
  }

  String pop() {
    if (isNotEmpty()) {
      return _stack[_top--];
    } else {
      _top = -1;
      return 'Stack is empty';
    }
  }

  bool isEmpty() {
    if (_top == -1) {
      return true;
    }
    return false;
  }

  bool isNotEmpty() {
    if (!isEmpty()) {
      return true;
    }
    return false;
  }

  void printStack() {
    for (int i = 0; i <= _top; i++) {
      print(_stack[i] + ' ');
    }
  }
}
