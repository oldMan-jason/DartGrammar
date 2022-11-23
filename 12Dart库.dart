/**
 * 系统内置库
 */
import 'dart:math';
import 'dart:io';

void main(List<String> args) {
  print(min(12, 13));

  testAsync();
}

testAsync() async {
  print("异步方法");
}

/**
 * 添加第三方库
 * Pub包管理系统中的库
 * 1、 在项目根目录新建一个pubspec.ymal文件
 * 2、 在pubspec.ymal文件中配置名称、描述、依赖等信息
 * 3、 然后运行pub get 获取包下载到本地
 * 4、 项目中引入库根据文档使用
 * 
 */
