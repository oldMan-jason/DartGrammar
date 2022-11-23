import 'dart:ffi';

void main(List<String> args) {
  stringType();
  valueType();
  listType();
  mapType();
  typeJudgment();
}

/**
 * Dart 字符串类型
 */
void stringType() {
//单行字符串
  var name = "你好";
  String myName = "jason";
  print("$name $myName");

  //多行字符串
  var multiStr = '''
    this is a string1
    this is a string2
    this is a string3
  ''';
  print(multiStr);

  //字符串的拼接
  var str1 = "我叫";
  String str2 = "xxxx";
  var combineStr = str1 + str2;
  print(combineStr);

  //打印的拼接
  print("$str1$str2");
}

/**
 * Dart 数值类型 
 * int 整形
 * double 可以是浮点型也可以是整形
 * bool 布尔类型 true false
 */

void valueType() {
  int val = 123;
  // val = 12.00;编译失败，整形无法被赋值给浮点型

  double val1 = 123.1;
  val1 = 2; //浮点型可以赋值为整形

  bool boolVal = false;
}

/**
 * Dart List类型 （数组、集合类型）
 * 
 */
void listType() {
  //定义一
  var list = ["jason", 12, true];
  print(list);

  int len = list.length;
  print(len);

  var val = list[0];
  print(val);

  //定义二: 指定对应的类型
  var list2 = <String>["list1", "list2", "list3"];
  print(list2);

  //定义三：增加数据
  var list3 = [];
  list3.add("张三");
  list3.add(12);
  print(list3);

  //修改长度
  list3.length = 0;
  print(list3);

  //定义四： List方式,指定数组的固定长度，无法给数组增加元素，也无法修改数组的长度
  var list4 = List.filled(5, "0");
  list4[0] = "1";
  list4[1] = "2";
  // list4.add(12); 无法增加元素
  // list4.length = 0; 无法修改数组的长度
  print(list4);

  //指定类型
  var list5 = List<String>.filled(2, "0");
  // list5.add(1);编译错误，类型不匹配
}

/**
 * Dart Map类型,key必须是字符串
 */
void mapType() {
  //定义一：
  var dic = {"name": "jason", "age": 12};
  print(dic);

  var name = dic["name"];
  print(name);

  //定义二：
  var dic2 = Map();
  dic2["name"] = "jason";
  dic2["age"] = 12;
  dic2["work"] = ["codeing", "test"];
  print(dic2);
}

/**
 * Dart 类型判断  is 
 */
void typeJudgment() {
  var val = 22;
  if (val is String) {
    print("val is a string");
  } else {
    print("val is not a string");
  }
}
