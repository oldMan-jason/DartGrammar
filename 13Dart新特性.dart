void main(List<String> args) {
  testNull();
}

/**
 * Dart null safety （空安全）
 * 
 */
testNull() {
  int a = 12;
  a = null;

// String? name是一个可空类型
  // String? name = "jason";
  // name = null;
}

/**
 * Dart 中返回可空类型
 * 

String? getData(apiUrl){
  if(apiUrl!=null){
    return "这个是数据返回";
  }
  return null;
}
 */

/**
 * Dart 类型断言
 * ！; 会有异常信息抛出
 
 void printStringLength(String? str){
  
  try {
    print(str!.length);
  } catch () {
    print("字符串为空");
  }
}

 */

/**
 *  Dart late 懒加载
 * 
 */

class Person {}
