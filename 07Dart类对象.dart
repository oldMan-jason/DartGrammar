void main(List<String> args) {
  Person p = Person();
  p.printInfo();

  Person1 p1 = Person1("jason", 12);
  p1.printInfo();

  //命名构造函数调用
  Person2 p2_1 = Person2.defaultMethod();
  Person2 p2_2 = Person2.defaultMethod2("shaozj", 30);
  p2_2.printInfo();

  // Rect r = Rect(100, 100);
  // print("面积--${r.area1}");

  Rect r1 = Rect();
  r1.area();
}

/**
 * Dart 类 和 对象
 * 特性：继承、封装、多态
 */

/**
 * Dart 类
 */

// 定义类
class Person {
  //属性
  var name;
  var age;
  var sex;

  printInfo() {
    print("${this.name} -- ${this.age} -- ${this.sex}");
  }

  printInfo2() {
    print(name);
    print("$name -- $age -- $sex");
  }
}

/**
 *  Dart 类的构造函数和自定义构造函数
 */

class Person1 {
  var name;
  var age;

  // Person1() {
  //   print("系统默认构造函数");
  // }

//自定义构造函数，如果存在自定义构造函数，系统构造函数则不能使用
  // Person1(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }

  //简写
  Person1(this.name, this.age);

  printInfo() {
    print("${this.name} -- ${this.age}");
  }
}

/**
 *  Dart 命名构造函数，可以存在多个命名构造函数
 */
class Person2 {
  var name;
  var age;

  //命名构造函数
  Person2.defaultMethod() {
    print("这个是命名构造函数");
  }

  Person2.defaultMethod2(this.name, this.age);

  printInfo() {
    print("${this.name} -- ${this.age}");
  }
}

/**
 *  Dart 属性和方法的私有
 * 1. 需要单独将类抽离为一个文件
 * 2. 属性私有，需要在属性前加下划线；例如：var _name;
 * 3. 方法私有，需要在方法前增加下划线；例如： _method(){}
 * 3. 私有的属性和方法可以在当前的类文件中访问，其他文件无法访问；
 * 4. 
 */

/**
 *  Dart Getter和Setter
 */
class Rect {
  var heigt;
  var width;
  //构造函数
  // Rect(this.heigt, this.width);

  /**
   * 构造函数的时候，外部初始化不用赋值，构造函数自动初始化值
   * 也叫做初始化列表
  */

  Rect()
      : heigt = 10,
        width = 10 {}

  //常规函数
  area() {
    return this.heigt * this.width;
  }

  //getter写法
  get area1 {
    return this.heigt * this.width;
  }

  //setter
  set setHeight(height) {
    this.heigt = height;
  }
}

/**
 *  Dart 类的静态方法、静态属性
 *  通过staic修饰，直接通过类名访问
 *  实例方法可以访问静态方法和静态属性
 *  静态方法不可以访问实例属性和实例方法
 */
class Person3 {
  static var name;
  static var age;

  var sex = "男";

  static printInfo() {
    print(name);
  }

  //实例方法中访问静态属性和静态方法
  void printInfo2() {
    //访问静态属性
    print(name);
    print(sex);

    //调用静态方法
    printInfo();
  }
}
