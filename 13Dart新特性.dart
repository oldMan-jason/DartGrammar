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
  late String name;
  int age;
  //name为可选类型参数，age为必传参数
  Person({required this.age}) {
    name = "jason";
  }
}

/**
 * Dart required 内置修饰符
 * 主要用于允许根据需要标记任何命名参数，使得他们不为空，因为可选参数中必须有个required,必须传入
 */

String? printUserInfo(String name, {required int age, required String sex}) {
  return null;
}

/***
 *  空安全适配
 * 1. 可空的属性：通过 ? 进行修饰
 * 2. 不可空的属性，在构造函数中设置默认值或通过required进行修饰
 */

/**
 * State的空安全适配
 * 1. 可空的变量：通过？进行修饰
 * 2. 不可空的变量：可采用1. 定义时，初始化值；2、使用late
 */


