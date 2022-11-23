void main(List<String> args) {
  controlMethod();
}

class Person {
  var name;
  var age;

  Person(this.name, this.age);

  printInfo() {
    print("${this.name},${this.age}");
  }
}

/**
 *  Dart 对象操作符
 *  ？ 条件运算符
 *  as 类型转换
 *  is 类型判断
 *  .. 级联操作
 */
void controlMethod() {
  // is 操作符
  var p;
  p = "";
  p = Person("jason", 20);
  if (p is Person) {}

  // as 操作符
  (p as Person).name = "jason";

  //连缀操作符
  p
    ..name = "shaozj"
    ..age = 12
    ..printInfo();
}

/**
 *  Dart 继承 extends
 */
class Son extends Person {
  var sex;
  Son(name, age, sex) : super(name, age) {
    this.sex = sex;
  }

  sonMethod() {
    print("这个是自己的方法");
  }

  //重写父类方法
  @override
  printInfo() {
    return super.printInfo();
  }
}
