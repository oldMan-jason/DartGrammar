void main(List<String> args) {
  testNull();

  printUserInfo("jason", age: 12, sex: "男");
}

/**
 * Dart null safety （空安全）
 * 
 */
testNull() {
  int? a = 12;
  a = null;

  // String? name是一个可空类型
  String? name = "jason";
  name = null;
}

/**
 * Dart 中返回可空类型
 */

String? getData(apiUrl) {
  if (apiUrl != null) {
    return "这个是数据返回";
  }
  return null;
}

/**
 * Dart 类型断言
 * ！; 会有异常信息抛出
 */
void printStringLength(String? str) {
  try {
    print(str!.length);
  } catch (error) {
    print("字符串为空 $error");
  }
}

/**
 *  Dart late 懒加载
 * 
 */

class Person {
  String? name;
  int age;
  //name为可选类型参数，age为必传参数
  Person({this.name, required this.age});
}

/**
 * Dart required 内置修饰符
 * 主要用于允许根据需要标记任何命名参数，使得他们不为空，因为可选参数中必须有个required,必须传入
 */

String? printUserInfo(String name, {required int age, required String sex}) {
  return null;
}
