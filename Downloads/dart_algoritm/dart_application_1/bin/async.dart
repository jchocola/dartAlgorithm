Future sgetMessage() {
  return Future.delayed(
      Duration(seconds: 3), (() => print("new message from Tom")));
}

void main() {
  Future<String> future = Future.delayed(Duration(seconds: 3), () {
    print("Future is coming");
    return ("HELLO FUTURE");
  });

  future.then((value) {
    print("result of future is $value");
    return (secImgs());
  }).then(
    (value) {
      print("day la $value");
    },
  ).whenComplete(() => print("future completed"))
  ;

  print("main ends");
}

Future<String> secImgs() {
  return Future.delayed(Duration(seconds: 2), (() => "con cac"));
}
