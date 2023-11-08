import 'dart:async';
import 'dart:isolate';

void main() async {
  print("Start calculation");
  final receivePort = ReceivePort();
  final isolate = await Isolate.spawn(count, receivePort.sendPort);
  receivePort.listen(((message) {
    print(message);
    receivePort.close();
    isolate.kill();
  }));

  print("some work...");
}

void count(SendPort sendPort) async {
  int res = 0;
  for (int i = 1; i < 5; i++) {
    // print(i);
    res = i;
  }
  sendPort.send(res);
}
