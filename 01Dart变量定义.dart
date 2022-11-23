/**Dart入口函数 */
void main(List<String> args) {
  defineVar();

  defineConst();
}

/**Dart 变量定义 
 * 
 * Dart属于脚本类型语言，可以不预先定义变量类型，自动类型推断
 * 可以使用 var 关键字申明变量
 * 如：
 *    var str = "jason"
 * 或者：
 *    String str = "jason"
 * 
 * 注意： 如果使用的var类型推断，就需要在指定变量类型，var 和 变量类型不可以同时使用
 * 
*/
void defineVar() {
  var name = "jason";
  String myName = "jason";

  var age = 30;
  int myAge = 30;

//变量区分大小写
  var Sex = "男";
  String sex = "男";
}

/** 
 * Dart常量final、const修饰符
 * const值不变，一开始就得赋值
 * final 可以开始不赋值，只能赋值一次，而final不仅可以具有const编译时常量特性，
 * 还有运行时的常量，并且final是惰性初始化，即在运行时第一次使用前才会初始化
 * 
 * final、const修饰的属性不可以再次修改
 * 
*/
void defineConst() {
  final countryName = "China";
  final String myCountryName = "China";

  final date = DateTime.now();
  print(date);

  // const date = DateTime.now(); 编译错误

  const PI = 3.1415926;
  // PI = 22; 不可以再次修改
}
