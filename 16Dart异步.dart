import 'dart:async';

import 'dart:math';

/**
 *  直接运行
 * Future.sync()
 * Future.value()
 * 
 * _.then()
 */

/**
 *  Microtask
 * scheduleMicrotask()
 * Future.microtask()
 * _completed.then()
 */

/**
 *  Event
 *  Future()
 *  Future.delayed()
 */
void main(List<String> args) async {
  // Event
  Future.delayed(Duration(seconds: 1), (() => print("event 3")));
  Future((() => print("event 1")));
  Future.delayed(Duration.zero, (() => print("event 2")));

  // Microtask
  scheduleMicrotask(() {
    print("microtask 1");
  });
  Future.microtask(() => print("microtask 2"));
  Future.value("123").then((value) => print("microtask 3"));

  //直接运行
  print("main 1");
  Future.sync(() => print("future sync 1"));
  print("main 2");
  Future.value(getName());

  //异常捕获
  getNumber()
      .then((value) => print(value))
      .catchError((error) => print(error))
      .whenComplete(() => print("完成"));

  getNameValue().then((value) => print(value));

  //异常捕获
  try {
    final val = await tryCatchMethod();
    print(val);
  } catch (e) {
    print(e);
  }
}

Future<int> getNumber() {
  // return Future.value(100);
  return Future.error("some thing went wrong");
}

Future<String> tryCatchMethod() {
  //抛出异常
  throw "抛出异常";
}

// 函数添加async 可以直接返回字符串
Future<String> getNameValue() async {
  //正常返回结果
  return "jason";
}

String getName() {
  print("get name");
  return "jason";
}

//创建一个stream,在streamBuilder中绑定stream
Stream<DateTime> getTime() async* {
  while (true) {
    Future.delayed(Duration(seconds: 1));
    yield DateTime.now();
  }
}
