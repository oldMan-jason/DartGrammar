void main(List<String> args) {
  var dog = Dog();
  dog.animalName = "旺财";
  dog.eat();
  dog.printAnimalInfo();

  var cat = Cat();
  cat.run();
}

/**
 *  Dart中的抽象类：Dart抽象类主要用于定义标准，子类可以继承抽象类，也可以实现抽象类接口
 * 
 * 1、抽象类通过abstract关键字定义
 * 2、Dart中的抽象方法不可以通过abstract声明，Dart中没有方法体的方法称之为抽象方法
 * 3、如果子类继承抽象类，必须得实现抽象方法
 * 4、如果把抽象类当做接口实现的话，必须得实现抽象类里面定义的所有属性和方法
 * 5、抽象类不可以被实例化，只有继承它的子类可以实例化
 * 
 * extends抽象类 和 implements的区别
 * 1、 如果要复用抽象类里面的方法，并且要用抽象方法约束自类的话我们就是用extends继承抽象类
 * 2、如果只是把抽象类当做标准接口的话我们就使用implements实现抽象类
 */

//抽象类定义
abstract class Animal {
  String animalName;
  eat(); //抽象方法
  run(); //抽象方法

  // 普通方法
  printAnimalInfo() {
    print("这个是一个抽象类中的普通方法");
  }
}

// 继承
class Dog extends Animal {
  @override
  String get animalName => super.animalName;

  @override
  eat() {
    print("小狗吃骨头！");
  }

  @override
  run() {}

  @override
  printAnimalInfo() {
    print("我叫$animalName");
  }
}

class Cat extends Animal {
  @override
  eat() {
    print("小猫吃鱼");
  }

  @override
  run() {}
}

/**
 * Dart 多态
 * 父类的指针指向子类的对象
 */
void polymorphism() {
  Animal an = Dog();
  an.eat();
}

/**
 * Dart 接口没有interface关键字定义接口，而是普通类或者抽象类都可以作为接口被实现，
 * 同样使用implements关键字进行实现
 * 例如： 定义DB库 支持mysql mogodb 2个类中都有相同的方法
 */

// 定义接口
abstract class DB {
  String path;
  add();
  delete();
  save();
}

class MySql implements DB {
  @override
  add() {}

  @override
  delete() {}

  @override
  save() {}

  @override
  String path;
}

class MogoDB implements DB {
  @override
  add() {}

  @override
  delete() {}

  @override
  save() {}

  @override
  String path;
}
