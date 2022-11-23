void main(List<String> args) {
  list();
  set();
  map();
  loop();
}

/**
 * Dart 集合类型 List 
 * 以及循环语句forEach、map、where any every
 */

void list() {
  //可扩展list
  var list1 = ["苹果", "西瓜", "香蕉", "草莓"];
  var list2 = <String>[];
  list2.add("value1"); //数据添加
  list2.add("value2");

  //固定长度list
  List list3 = List<String>.filled(10, "");
  list3[0] = "value1"; //索引数据修改
  list3[1] = "value2";

  //常用属性
  int len = list3.length;
  bool isempty = list1.isEmpty;
  bool isnoempty = list2.isNotEmpty;

  //list反转
  var newlist = list1.reversed.toList();
  print(newlist);

  //list添加
  list1.add("哈密瓜");
  list1.addAll(["桃子", "西红柿"]);
  print(list1);

  //查找
  var index = list1.indexOf("油桃");
  print(index);

  //删除
  list1.remove("草莓");
  list1.removeAt(2);
  print(list1);

  //范围修改值
  list1.fillRange(1, 3, "橘子");
  print(list1);

  //插入
  list1.insert(3, "菠萝");
  list1.insertAll(2, ["砂糖橘", "甘蔗"]);
  print(list1);

  //转化为字符串
  var str = list1.join("#");
  print(str);
  //字符串转数组
  var tmplist = str.split("#").toList();
  print(tmplist);
}

/**
 * Dart set集合 可以去重
 */
void set() {
  var s = Set();
  s.add("val1");
  s.addAll(["val2", "val3"]);
  print(s.toList());
}

/**
 * Dart Map
 */

void map() {
  //定义
  var dic = {"name": "jason", "age": 12};

  var dic1 = Map();
  dic1["value"] = "test";

  //常用属性
  var keys = dic.keys.toList();
  var values = dic.values.toList();
  bool empty = dic.isEmpty;
  bool noempty = dic.isNotEmpty;

  //添加
  dic.addAll({"sex": "男", "ads": "BJ"});
  print(dic);

  dic.remove("sex");
  print(dic);
}

void loop() {
  var list1 = ["苹果", "西瓜", "香蕉", "草莓"];
  list1.forEach((element) {
    print(element);
  });

  List tmp = list1.map((e) => e + "水果").toList();
  print(tmp);

  //满足条件的处理
  var list2 = [12, 23, 3, 1, 10, 30];
  var tmplist = list2.where((element) => element > 15);
  print(tmplist);

  //集合是否满足条件 返回bool,只有有一个满足条件就返回true
  bool have = list2.any((element) => element > 20);
  print(have);

  //every 每一个元素都要满足条件才会返回true
  bool have1 = list2.every((element) => element > 10);
}
