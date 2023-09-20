import 'dart:async';
import 'dart:isolate';

Isolate? isolate;
String name = "Dart";
void main(List<String> args) {
  isolateServer();
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
