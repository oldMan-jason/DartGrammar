abstract class Person {
  void think() {
    print("1");
  }
}

mixin MixinClass {
  String? name;
  get address {
    return "${name} -- 居住在北京";
  }

  void printFun() {
    print("打印函数");
  }
}

class Jason implements Person {
  @override
  void think() {}
}

class Jason1 extends Person {
  @override
  void think() {
    super.think();
  }
}

class Jason2 with MixinClass {}

void main(List<String> args) {
  var js = Jason2();
  js.name = "哈哈哈";
  print(js.address);
}

extension StringCategory on String {
  desc() {
    print(this);
  }
}
