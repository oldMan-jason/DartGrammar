void main(List<String> args) {
  C c = C(12, "js");
  c.printAinfo();

  mixinsMethod();
}

/**
 * Dart 一个类实现多个接口
 */

abstract class A {
  String clsName;
  printAinfo();
}

abstract class B {
  int age;
  printBinfo();
}

//实现多个接口
class C implements A, B {
  @override
  int age;

  @override
  String clsName;

  C(this.age, this.clsName);

  @override
  printAinfo() {
    print("A信息 -- 年龄：${this.age} 名字:${this.clsName}");
  }

  @override
  printBinfo() {}
}

/**
 * Dart mixins的中文意思 混入
 * Dart中可以使用mixins实现类似多继承的功能
 * 
 * 1、 作为mixins的类只能继承至Object，不能继承其他类
 * 2、 作为mixins类不能有构造函数
 * 3、 一个类可以mixins多个类
 * 4、 mixins是一种新特性
 * 
 */

class Person {
  String name;
  int age;
  Person(this.name, this.age);
}

class Father {
  void printFatherInfo() {
    print("这个是父亲的信息");
  }
}

class Mother {
  void printMotherInfo() {
    print("这个是母亲的信息");
  }
}

// with 写法，类似多继承
class Son with Father, Mother {}

class Son1 extends Person with Father, Mother {
  Son1(String name, int age) : super(name, age);
}

void mixinsMethod() {
  Son s = Son();
  s.printFatherInfo();

  Son1 s1 = Son1("jason", 12);
  s1.printMotherInfo();
}
