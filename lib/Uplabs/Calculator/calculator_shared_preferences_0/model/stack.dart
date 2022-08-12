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

  void _push(String val) {
    if (_top < _stackSize - 1) {
      _stack[++_top] = val;
    } else {
      print('Stack is full');
    }
  }

  String _pop() {
    if (_isNotEmpty()) {
      return _stack[_top--];
    } else {
      _top = -1;
      return 'Stack is empty';
    }
  }

  bool _isEmpty() {
    if (_top == -1) {
      return true;
    }
    return false;
  }

  bool _isNotEmpty() {
    if (!_isEmpty()) {
      return true;
    }
    return false;
  }

  void _printStack(String s) {
    for (int i = 0; i <= _top; i++) {
      print(_stack[i] + ' ');
    }
  }
}
