void main(List<String> args) {
  final p = PortType.usbA;
  p.isUsb;
}

// 定义枚举
enum PortType {
  usbA("USB-A", true),
  usbC("USB-C", true),
  lighting("LIGHTING");

  //枚举的构造参数
  final String name;
  final bool? isUsb;
  const PortType(this.name, [this.isUsb = false]);
}
