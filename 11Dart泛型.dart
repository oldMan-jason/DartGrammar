void main(List<String> args) {
  //泛型方法调用，无校验
  getData("12");
  getData(12);

  //特定数据类型的校验
  getData<int>(1);
  getData<String>("字符串");

  testGeneric();

  testGeneric1();
}

/**
 * Dart 泛型方法
 */

// 泛型方法定义
getData<T>(T val) {
  return val;
}

/**
 * Dart 泛型类
 * */
class Generic<T> {
  var list = <T>[];
  addValue(T val) {
    list.add(val);
  }

  printInfo() {
    print(list);
  }
}

testGeneric() {
  //不指定添加的类型
  var ge = Generic();
  ge.addValue(12);
  ge.printInfo();

  //创建类指定添加类型
  var ge1 = Generic<String>();
  // ge1.addValue(12);// 编译错误
  ge1.addValue("jason");
}

/**
 *  Dart 泛型接口
 */
abstract class Cache<T> {
  getByKey(String key);
  void setByKey(String key, T val);
}

class FileCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, val) {}
}

class MemoryCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, T val) {}
}

testGeneric1() {
  var fileCache = FileCache<int>();
  fileCache.setByKey("index", 1);

  var memory = MemoryCache<String>();
  memory.setByKey("size", "12");
}
