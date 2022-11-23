void main(List<String> args) {
  arithmeticOperators();
  baiscEvaluation();
  condition();
  typeTransform();
}

/**
 * Dart 算术运算符
 * +、 -、 *、 /、 %、 ~/(取整) 
 */
void arithmeticOperators() {
  var a = 12;
  var b = 5;
  print(a ~/ b);
}

/**
 * Dart 关系运算符
 * ==、!= 、>、<、>=、<= 
 */

/**
 * Dart 逻辑运算符
 * 
 * ! 、 && 、||
 */

/**
 * Dart 赋值运算符
 * 基础赋值运算符： = 、??=
 * 符合赋值运算符：+=、-=、*=、/=、%=、~/=
 * 三目运算符 a? 12: 34;
 * ??运算符
 * ++a 先运算在赋值
 * a++ 先赋值后运算
 * 
 */
void baiscEvaluation() {
  var b;
  b ??= 34;
  print(b);

  var a = true;
  var c = a ? 12 : 34;
  print(c);

  // var str = "我是有值";
  var str;
  var val = str ?? "默认值";
  print(val);

  int d = 10;
  var e = ++d;
  print(e);
  var f = d++;
  print(f);

  print(d);
}

/**
 * Dart 条件判断
 * if else
 * switch case
 */
void condition() {
  var score = 90;
  if (score > 70) {
    print("优秀");
  } else {
    print("不及格");
  }

  var sex = "男";
  switch (sex) {
    case "男":
      print("性别男");
      break;
    case "女":
      print("性别女");
      break;
    default:
  }
}

/**
 * Dart 类型转换
 * Number -> String   toString();
 * String -> NSumber int.parse()
 * 其他类型转化Wie 布尔类型
 */

void typeTransform() {
  int a = 12;
  var str = a.toString();
  print(str);

  var str2 = "100";
  var c = int.parse(str2);
  print(c);

  //类型转换的异常处理
  var str3 = "中国";
  try {
    var d = double.parse(str3);
    print(d);
  } catch (err) {
    print("类型转化异常$err");
  }

//bool类型
  var text = "这个是文本";
  if (text.isEmpty) {
    //字符串是否为空
  }

  var number;
  if (number == null) {
    print("number 为空");
  }
}
