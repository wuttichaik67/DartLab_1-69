mixin Loggable {
  void log(String msg) {
    DateTime now = DateTime.now();
    print("[$now] LOG: $msg");
  }
}

class Stack<T> with Loggable {
  final List<T> _storage = [];

  void push(T element) {
    _storage.add(element);
    log("Push -> เพิ่มข้อมูล '$element' เข้าไปใน Stack (จำนวนข้อมูลปัจจุบัน: ${_storage.length})");
  }

  T? pop() {
    if (_storage.isEmpty) {
      log("Pop -> ไม่สามารถนำข้อมูลออกได้เนื่องจาก Stack ว่างเปล่า");
      return null;
    }
    T removedElement = _storage.removeLast();
    log("Pop -> นำข้อมูล '$removedElement' ออกจาก Stack (จำนวนข้อมูลปัจจุบัน: ${_storage.length})");
    return removedElement;
  }

  void showStack() {
    print("ข้อมูลใน Stack ปัจจุบัน: $_storage");
    print("----------------------------------------------------------------");
  }
}

void main() {
  Stack<String> stringStack = Stack<String>();
  stringStack.push("A");
  stringStack.push("B");
  stringStack.pop();
}