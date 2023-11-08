void main() {
  print("1 sych");
  Future(() => print("2 event queue")).then((value) => print("3 sych"));
  Future.microtask(() => print("4 microtask"));
  Future.microtask(() => print("5 microtask"));
  Future.delayed(Duration(seconds: 1), (() => print("6 event queue")));
  Future(() => print("7 event queue"))
      .then((value) => Future(() => print("8 event queue")));
  Future(() => print("9 event queue"))
      .then((value) => Future.microtask((() => print("10 microtask queue"))));
  Future.microtask(() => print("11 microtask"));
  Future.microtask(() => print("12 microtask"))
      .then((value) => Future((() => print("13 eventque"))));
  print("14 sych");
}
