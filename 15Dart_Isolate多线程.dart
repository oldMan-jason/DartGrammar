import 'dart:isolate';

Isolate? isolate;
String name = "Dart";
void main(List<String> args) async {
  isolateServer();

  // test2
  final rec = ReceivePort();
  await Isolate.spawn(printMessage, [rec.sendPort, "shaozj"]);
  rec.listen((message) {
    print(message);
  });
}

//多线程
void isolateServer() async {
  final recive = ReceivePort();
  isolate = await Isolate.spawn(ChangeName, recive.sendPort);

  recive.listen((message) {
    print("listen message -- $message");
    print("listen name -- $name");
  });
}

void ChangeName(SendPort port) {
  name = "Dart isolate";
  port.send(name);
}

// test2
void printMessage(message) {
  print("print -- $message");
  final sendport = message[0] as SendPort;
  sendport.send("数据处理完成");
}
