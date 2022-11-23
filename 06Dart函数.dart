void main(List<String> args) {
  //常规函数调用
  method1("jason", 12);
  print(method2(2));

  //可选参数
  optionsMethod("jason");
  //可选参数默认值
  optionsDefaultValMethod("shaozj");
  //命名参数
  nameMethod("shaozj", age: 12, sex: "nv");
  //箭头函数
  arrowMethod();
  //匿名函数
  nickMethod();
}

/**
 * Dart 函数
 * 
 * 返回值类型 函数名(参数) {
*      执行代码块
 * }
 */

// 无返回值、无参数函数
void method() {
  print("无返回值、无参数函数");
}

// 无返回值、有参数
void method1(String name, int age) {
  print("名字是$name,年龄$age");
}

// 有返回值，有参数
List method2(int rangVal) {
  var list = <int>[];
  for (int i = 0; i < rangVal; i++) {
    list.add(i);
  }
  return list;
}

// 有返回值，无参数
String getName() {
  return "jason";
}

//函数嵌套函数,注意函数的作用域
void method3() {
  inoutMethod() {
    print("内部函数");
  }

  inoutMethod();
}

/**
 *  Dart 函数的可选参数
 * [int 参数名，String 参数名]
 */
void optionsMethod(String name, [int age, double money]) {
  if (age != null && money != null) {
    print("名字是$name 年龄$age 收入$money");
  } else {
    print("名字$name");
  }
}

/**
 * Dart 函数 可选参数的默认值
 */
void optionsDefaultValMethod(String name, [String sex = "男", int age]) {
  if (age != null) {
    print("名字$name,性别：$sex 年龄$age");
  } else {
    print("名字$name,性别：$sex 年龄保密");
  }
}

/**
 *  Dart 函数 命名参数
 */
void nameMethod(String name, {int age, String sex = "男"}) {
  print("名字$name,年龄$age,性别$sex");
}

/**
 *  Dart 箭头函数 => 一句表达式
 */
void arrowMethod() {
  var list = [12, 34, 56, 78];
  list.forEach((val) => print(val));

  var tmpList = list.map((val) => val > 10 ? val - 10 : val);
  print(tmpList.toList());
}

/**
 *  Dart  匿名函数
 */

void nickMethod() {
  var printFun = (int a) {
    print("这个是匿名函数$a");
    return a * a;
  };

  var val = printFun(12);
  print(val);

  //自执行方法
  ((int a) {
    print("自执行函数 $a");
  })(12);

  (() {})();
}

/**
 *  Dart 闭包 closure
 *  函数内部嵌套函数，并且返回当前的内部函数
 * 具有全局变量和局部变量的特性
 * 不需要注明返回值和类型
 */
void closureMethod() {
  fn() {
    return (int val) {
      print("内部函数 参数值$val");
      return 10;
    };
  }

  fn()(12);
  print(fn()(12));
}
