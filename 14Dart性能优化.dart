void main(List<String> args) {
  testMethod();
  testMethod2();
}

/**
 *  Dart identical 函数;检查两个引用对象是否指向同一个对象‘
 * 
 *   const关键词在多个地方创建相同对象的时候，内存中只保留一个对象
 * 
 */

testMethod() {
  var o1 = Object();
  var o2 = Object();

  bool identicalval = identical(o1, o2);
  print(identicalval);

//如果通过const修饰
  var o3 = const Object();
  var o4 = const Object();
  bool identicalval2 = identical(o3, o4);
  print(identicalval2);
}

/**
 * Dart  常量构造函数
 * 1、 常量构造函数需要以 const关键词修饰
 * 2、 成员变量都是final修饰
 * 3、 如果实例化时，不加const修饰符，及时调用的是常量构造函数，实例化的对象也不是常量实例
 * 4、 实例化常量构造函数的时候，多个地方创建这个对象，如果传入的值相同，只会保留一个；值不同则不是相同的；
 */

class Container {
  final int width;
  final int height;

  const Container({required this.width, required this.height});
}

testMethod2() {
  var c1 = Container(width: 100, height: 100);
  var c2 = Container(width: 100, height: 100);
  print(identical(c1, c2)); //false

  var c3 = const Container(width: 100, height: 100);
  var c4 = const Container(width: 100, height: 100);
  print(identical(c3, c4)); //true

  //值不一样 也不是一个
  var c5 = const Container(width: 80, height: 100);
  var c6 = const Container(width: 100, height: 100);
  print(identical(c5, c6)); //false
}
